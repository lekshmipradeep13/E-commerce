import 'package:fashion_store/modules/Register/Controller/registration_cntrl.dart';
import 'package:fashion_store/modules/Register/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUPScreen extends StatefulWidget {
  const SignUPScreen({super.key});

  @override
  State<SignUPScreen> createState() => _SignUPScreenState();
}

class _SignUPScreenState extends State<SignUPScreen> {
  TextEditingController name=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Consumer<RegistrationController>(
      builder: (context, value, child) => 
       Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 33, right: 33, top: 58),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Create\nyour account ',
                    style: GoogleFonts.ptSans(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 24),
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  TextFormField(
                    controller: name,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(labelText: 'Enter your name'),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: email,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        labelText: 'Email address',
                        labelStyle: GoogleFonts.ptSans()),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: password,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        labelText: 'Password', labelStyle: GoogleFonts.ptSans()),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        labelText: 'Confirm Password',
                        labelStyle: GoogleFonts.ptSans()),
                  ),
                  SizedBox(height: 44),
                  Center(
                    child: GestureDetector(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                      value.registerUser(name: name.text, email: email.text, password: password.text);
                    },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 41, vertical: 17),
                        height: 51,
                        width: 147,
                        decoration: BoxDecoration(
                            color: Color(0xff2D201C),
                            borderRadius: BorderRadius.circular(26.5)),
                        child: Text(
                          'SIGN UP',
                          style: GoogleFonts.ptSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 28),
                  Center(
                    child: Text(
                      'or sign up with',
                      style: GoogleFonts.ptSans(
                          fontSize: 12, color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 28),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/appleicon.png',
                        height: 42,
                        width: 42,
                      ),
                      SizedBox(width: 20),
                      Image.asset(
                        'assets/googleicon.png',
                        height: 42,
                        width: 42,
                      ),
                      SizedBox(width: 20),
                      Image.asset(
                        'assets/facebookicon.png',
                        height: 42,
                        width: 42,
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Center(
                    child: TextButton(onPressed: () {
                      Navigator.push(context,  MaterialPageRoute(builder:  (context) => LoginScreen(),));
                    },
                      child: Text(
                        'Already have account?Log In',
                        style:
                            GoogleFonts.ptSans(fontSize: 14, color: Colors.black),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
