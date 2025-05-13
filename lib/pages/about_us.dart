import 'package:flutter/material.dart'; 
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class About_us extends StatelessWidget {
  const About_us({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container( //Image container
                width: 900,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(color: Colors.black, offset: Offset(2, 5), blurRadius: 10,)
                  ]
                ),
                margin: const EdgeInsets.all(50),
                padding: const EdgeInsets.all(2),
                child: Image.asset(fit: BoxFit.cover,"images/image1.png", width: 900),
              ),
              Container( //Text container
                margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                child: const Text("Welcome to our revolutionary digital platform designed specifically for innovators, startups, and investors aiming to shape the future of technology and innovation.",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color(0xff013161),
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                child: const Text("Our mission is to provide a comprehensive, user-friendly environment where technology enthusiasts can connect, collaborate, and cultivate their ideas into successful ventures.",
                style: TextStyle(
                  color: Color(0xff013161),
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                child: const Text("Our platform offers a range of features including secure logins, robust project management tools, virtual collaboration spaces, and tailored educational resources.",
                style: TextStyle(
                  color: Color(0xff013161),
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                child: const Text("We are committed to fostering a thriving ecosystem that supports the dynamic needs of our community across various devices and platforms. Join us in driving the future of innovation.",
                style: TextStyle(
                  color: Color(0xff013161),
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                ),
              ),

              const SizedBox(height: 5),
              MaterialButton(
                color: const Color(0xffFFA500),
                textColor: const Color(0xff013161),
                onPressed: () {
                  Navigator.pushNamed(context, "/login");
                },
                child: const Text('Login', 
                  style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold
                ),),
              ),
              const SizedBox(height: 20),
            ],
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
                const Divider(color: Colors.white54), 
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
    );
  }
}