import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final Color customBlue = Color(0xFF003366); // Custom blue color

  // Controllers for email and phone number
  final TextEditingController emailController = TextEditingController(text: 'john.doe@example.com');
  final TextEditingController phoneController = TextEditingController(text: '+123 456 7890');
  
  bool isOnline = false; // State variable for the toggle switch

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: const Color(0xff003366),
          title: Row(
            children: [
              Image.asset(
                'images/image2.png',
                height: 70,
              ),
            ],
          ),
          actions: [
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/homepage");
                  },
                  child: const Text(
                    'Home',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Tank of ideas',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Events',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 32),
                  child: Container(
                    width: 200,
                    height: 100,
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Search',
                        contentPadding: const EdgeInsets.all(5),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        prefixIcon: const Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/profilepage");
                  },
                  icon: const Icon(Icons.person, color: Colors.white),
                ),
                MaterialButton(
                  color: const Color.fromARGB(255, 255, 165, 0),
                  textColor: const Color(0xff013161),
                  padding: const EdgeInsets.all(3),
                  onPressed: () {
                    Navigator.pushNamed(context, "/login");
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20), // Spacing between the header and the grey rectangle

              // Main Content of the Profile Page
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(20),
                child: Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Left column for User Info
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Profile Picture
                              Container(
                                width: 150, // Increased size of the profile picture
                                height: 150,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage('images/image7.png'), // Your profile picture here
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(height: 20), // Spacing for user info
                              Text(
                                'Hello, John Doe', // Replace with dynamic username
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: customBlue,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Contact Information',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),

                              // Modifiable Email Field
                              TextField(
                                controller: emailController,
                                decoration: InputDecoration(
                                  labelText: 'Email',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              SizedBox(height: 10),

                              // Modifiable Phone Number Field
                              TextField(
                                controller: phoneController,
                                decoration: InputDecoration(
                                  labelText: 'Phone',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              SizedBox(height: 20),

                              // Online/Offline Toggle Switch
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Online Status',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Switch(
                                    value: isOnline,
                                    onChanged: (value) {
                                      setState(() {
                                        isOnline = value; // Update the state when the switch is toggled
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 20), // Spacing between the two columns

                        // Right column for About Me and My Ideas
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // About Me section
                              Text(
                                'About Me',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: customBlue,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'I am a passionate software developer with a strong background in mobile application development, particularly using Flutter. I have a keen interest in building user-friendly interfaces and delivering quality software products.',
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(height: 30), // Spacing between "About Me" and "My Ideas" section

                              // My Ideas section
                              Text(
                                'My Ideas',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: customBlue,
                                ),
                              ),
                              SizedBox(height: 10),

                              // Image for "My Ideas"
                              Container(
                                width: 200, // Medium size for the image
                                height: 150,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("images/image4.png"), // Replace with your image
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          height: 115,
          color: const Color(0xff003366),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    icon: const FaIcon(
                      FontAwesomeIcons.twitter,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    icon: const FaIcon(
                      FontAwesomeIcons.instagram,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    icon: const FaIcon(
                      FontAwesomeIcons.whatsapp,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              const Divider(color: Colors.white54), // Adds a divider between social and links
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/about_us");
                    },
                    child: const Text(
                      'About Us',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/support");
                    },
                    child: const Text(
                      'Support & Help',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Privacy Policy',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/termsofuse");
                    },
                    child: const Text(
                      'Terms of Use',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }}