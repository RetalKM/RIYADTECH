import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class TermsOfUse extends StatefulWidget {
  @override
  _TermsOfUseState createState() => _TermsOfUseState();
}

class _TermsOfUseState extends State<TermsOfUse> {
  bool _isChecked = false;

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
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
                margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                child: const Text(
                  "Terms of Use",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color:  Color.fromARGB(255, 255, 165, 0),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
               Container(
                margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                child: const Text(
                  "Approval and acceptance:",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(0xff013161),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                child: const Text(
                  "By using the RiyadaTech platform, you agree to abide by all terms and conditions set forth in this document. If you do not agree to these terms, you are requested to stop using the Platform.",
                  style: TextStyle(
                    color: Color(0xff013161),
                    fontSize: 15,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                child: const Text(
                  "Privacy and data protection:",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(0xff013161),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                child: const Text(
                  "We are committed to protecting our users’ privacy and personal data. Data will only be collected for specific, pre-specified purposes and will not be shared with any third party without your explicit consent.",
                  style: TextStyle(
                    color: Color(0xff013161),
                    fontSize: 15,
                  ),
                ),
              ),
               Container(
                margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                child: const Text(
                  "Use of the platform:",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(0xff013161),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                child: const Text(
                  "The RiyadaTech platform must be used for legitimate purposes only, and it is prohibited to use it for any illegal or unethical activity.Users must provide accurate and correct information when registering, and the use of false or misleading information is prohibited.",
                  style: TextStyle(
                    color: Color(0xff013161),
                    fontSize: 15,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                child: const Text(
                  "Updates and changes:",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(0xff013161),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                child: const Text(
                  "We reserve the right to change the Terms of Use at any time without prior notice, and any changes will be posted on this page.Users should review the Terms periodically for any new changes.",
                  style: TextStyle(
                    color: Color(0xff013161),
                    fontSize: 15,
                  ),
                ),
              ),
                Container(
                margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                child: const Text(
                  "Liability and warranty:",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(0xff013161),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                child: const Text(
                  "We do not accept any liability for any loss or damage arising from the use of or inability to use the Platform, including direct and indirect damages.",
                  style: TextStyle(
                    color: Color(0xff013161),
                    fontSize: 15,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                child: const Text(
                  "Compensation:",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(0xff013161),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                child: const Text(
                  "Users agree to indemnify and protect RiyadaTech, its partners and employees from any claims, losses or damages resulting from their use of the platform.",
                  style: TextStyle(
                    color: Color(0xff013161),
                    fontSize: 15,
                  ),
                ),
              ),
               SizedBox(
                  height: 17,
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    value: _isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked = value ?? false;
                      });
                    },
                  ),
                  const Text(
                    "I have read and agree to all the terms and conditions",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              MaterialButton(
                color: const Color(0xffFFA500),
                textColor: const Color(0xff013161),
                onPressed: _isChecked
                    ? () {
                        Navigator.pushNamed(context, "/homepage");
                      }
                    : null, // Button is disabled when unchecked
                child: const Text(
                  'Submit',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
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