import 'package:flutter/material.dart'; 
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Support extends StatefulWidget {
  _SupportState createState() => _SupportState();
}

class _SupportState extends State <Support> {

  int _rating = 0;
  bool _isSubmitted = false;

  // تحديث التقييم حسب عدد النجوم اللي يختارها المستخدم
  void _setRating(int rating) {
    setState(() {
      _rating = rating;
    });
  }

  // دالة تأكيد التقييم وإخفاء النجوم
  void _submitRating() {
    setState(() {
      _isSubmitted = true;
    });
  }

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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container( //Text container
                    margin: const EdgeInsets.symmetric(vertical: 25),
                    child: const Text("Welcome to RIYADTECH Support",
                    style: TextStyle(
                      color: Color(0xff013161),
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.support_agent, color: Color(0xff013161)),
                    ),
                ]
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: const Text("For technical issues or inquiries about our products, we are here to help through several channels:",
                style: TextStyle(
                  color: Color(0xff013161),
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                child: const Text("• Email: Send us your query at RIYADTECHriydh.com and we'll respond within 24 hours.",
                style: TextStyle(
                  color: Color(0xff013161),
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 70, vertical: 8),
                child: const Text("• Phone: Call us at 01245903039 during business hours for direct support.",
                style: TextStyle(
                  color: Color(0xff013161),
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                ),
              ),

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 70, vertical: 8),
                child: const Text("• Contact Form: Fill out our contact form on the website and we will get back to you promptly.",
                style: TextStyle(
                  color: Color(0xff013161),
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                ),
              ),

              const SizedBox(height: 20),

              Container(
                alignment: Alignment.bottomLeft,
                margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: const Text("Helpful Resources",
                style: TextStyle(
                  color: Color(0xff013161),
                  fontSize: 28,
                  fontWeight: FontWeight.bold
                ),
                ),
              ),

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                child: const Text("• Email: Send us your query at RIYADTECHriydh.com and we'll respond within 24 hours.",
                style: TextStyle(
                  color: Color(0xff013161),
                  fontSize: 17,
                  fontWeight: FontWeight.bold
                ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.symmetric(horizontal: 70, vertical: 8),
                child: const Text("• FAQ: Check our Frequently Asked Questions section for quick answers.",
                style: TextStyle(
                  color: Color(0xff013161),
                  fontSize: 17,
                  fontWeight: FontWeight.bold
                ),
                ),
              ),

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 70, vertical: 8),
                child: const Text("• System Status: Check real-time updates on the operational status of our services.",
                style: TextStyle(
                  color: Color(0xff013161),
                  fontSize: 17,
                  fontWeight: FontWeight.bold
                ),
                ),
              ),
              
              Row(
                children: [
                  const Padding(padding: EdgeInsets.symmetric(horizontal: 25, vertical: 50)),
                  const Text("For updates and tips, follow us on our social media ",
                  style: TextStyle(
                    color: Color(0xff013161),
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  IconButton(
                      icon: const FaIcon(FontAwesomeIcons.instagram, color: Colors.black,),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const FaIcon(FontAwesomeIcons.whatsapp, color: Colors.black,),
                      onPressed: () {},
                    ),
                ],
              ),
              
              const SizedBox(height:15),
            ],
          ),
          _isSubmitted
            ? Container(
              margin: const EdgeInsets.only(bottom: 50),
              child: const Text('Thank You 🙏⭐',
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xff013161),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  ),
              ),
            )
              
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Please, rate our service:',
                    style: TextStyle(color: Color(0xff013161),
                    fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(5, (index) {
                      return IconButton(
                        icon: Icon(
                          index < _rating
                              ? Icons.star
                              : Icons.star_border,
                          color: Colors.amber,
                          size: 30,
                        ),
                        onPressed: () => _setRating(index + 1),
                      );
                    }),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _rating > 0 ? _submitRating : null,
                    child: const Text('Submit',
                    style: TextStyle(color: Color(0xff013161),),
                    ),
                  ),
                  const SizedBox(height: 25),
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
                      onPressed: () {},
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