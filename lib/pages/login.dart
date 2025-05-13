import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Login extends StatelessWidget {
  const Login({super.key});
//Color(0xFFF39C12)
//Color.fromARGB(255, 121, 77, 7)
//Color.fromARGB(100, 243, 157, 18)
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

        body: SizedBox(
            width: double.infinity, //العرض كلو
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(100, 243, 157, 18), //خليتو شفاف
                        borderRadius:
                            BorderRadius.circular(66) //يخلي المكان مدور
                        ),
                    width: 266,
                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                    child: TextField(
                      decoration: InputDecoration(
                        border:
                            InputBorder.none, //يحذف الخط الاسود يلي تحت البوردر
                        hintText: "Enter your email : ",
                        hintStyle: TextStyle(fontSize: 15),
                        prefixIcon: Icon(Icons.person),
                      ),
                    )),
                SizedBox(
                  height: 23,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(100, 243, 157, 18), //خليتو شفاف
                        borderRadius:
                            BorderRadius.circular(66) //يخلي المكان مدور
                        ),
                    width: 266,
                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                    child: TextField(
                      keyboardType:
                          TextInputType.emailAddress, //اخلي يقطرح ايميلات
                      obscureText: true, //نخفي الرقم السري
                      decoration: InputDecoration(
                        border:
                            InputBorder.none, //يحذف الخط الاسود يلي تحت البوردر
                        hintText: "Password : ",
                        hintStyle: TextStyle(fontSize: 15),
                        prefixIcon: Icon(Icons.lock),
                      ),
                    )),
                SizedBox(
                  height: 17,
                ),
                ElevatedButton(
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 19, color: Color.fromARGB(255, 121, 77, 7)),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/homepage");
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFFF39C12)),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 99, vertical: 16)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(66))),
                  ),
                ),
                SizedBox(
                  height: 17,
                ),
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center, //يخلي الخط في النص
                  children: [
                    Text("Don't have an account? "),
                    
                    
                    GestureDetector(
                      onTap: (){Navigator.pushNamed(context, "/signup" );},
                      child:Text(
                      " Sign up",
                      style: TextStyle(fontWeight: FontWeight.bold),//عشان نخلي الكلمه ظاهره اكتر او بولد
                    )),

                 
                  ],
                ),
              ],
            )),
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
            ));
  }
}
