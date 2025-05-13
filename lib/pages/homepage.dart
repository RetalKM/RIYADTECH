import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  final Color customBlue = Color(0xFF003366); // Custom blue color

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
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
                
                child: const Text('Login', 
                  style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),),
                ),
              ],
            ),
          ],
      ),

      body: Column(
        children: [

          // Body Section
          Expanded(
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // News Section Title
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'News',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: customBlue,
                      ),
                    ),
                  ),

                  // News Widget
                Container( //Image container
                  width: 1800,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(color: Colors.black, offset: Offset(2, 5), blurRadius: 10,)
                    ]
                  ),
                  margin: const EdgeInsets.all(30),
                  padding: const EdgeInsets.all(2),
                  child: Image.asset(fit: BoxFit.cover,"images/image9.png", height: 200,),
                ),

                  // Dots under the news widget for pagination
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(3, (index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Icon(
                            Icons.circle,
                            size: 10,
                            color: index == 0 ? customBlue : Colors.grey, // Highlight current dot
                          ),
                        );
                      }),
                    ),
                  ),
                  SizedBox(height: 20), // Add spacing between the news widget and the squares

                  // Popular Ideas Section Title
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Popular Ideas',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: customBlue,
                      ),
                    ),
                  ),
                  SizedBox(height: 10), // Spacing between the title and the squares

                  // Centered Row of Images (Popular Ideas)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center, // Centers the squares
                    children: [
                      Image.asset(
                        'images/image5.png', 
                        width: 210, 
                        height: 170, 
                        fit: BoxFit.cover,
                      ),
                      SizedBox(width: 10), // Space between the images
                      Image.asset(
                        'images/image4.png', 
                        width: 250, 
                        height: 190, 
                        fit: BoxFit.cover,
                      ),
                      SizedBox(width: 10), // Space between the images
                      Image.asset(
                        'images/image6.png', 
                        width: 210, 
                        height: 170, 
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),

                  // Dots under the Popular Ideas squares for pagination
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(3, (index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                          child: Icon(
                            Icons.circle,
                            size: 10,
                            color: index == 0 ? customBlue : Colors.grey, // Highlight current dot
                          ),
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
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
                      icon: const FaIcon(FontAwesomeIcons.twitter, color: Colors.white,),
                      onPressed: () {},
                    ),
                    
                    IconButton(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      icon: const FaIcon(FontAwesomeIcons.instagram, color: Colors.white,),
                      onPressed: () {},
                    ),

                    IconButton(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      icon: const FaIcon(FontAwesomeIcons.whatsapp, color: Colors.white,),
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
  }
}
