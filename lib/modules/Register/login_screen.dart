import 'package:fashion_store/modules/Register/forgot_password_screen.dart';
import 'package:fashion_store/modules/Register/verification_Code.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.only(left: 33, right: 33, top: 58),
                child: Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Text(
                        'Log into \nyour account ',
                        style: GoogleFonts.ptSans(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 24),
                      ),
                      SizedBox(
                        height: 19,
                      ),
                      TextFormField(
                        textAlign: TextAlign.center,
                        decoration:
                            InputDecoration(labelText: 'Email address'),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: GoogleFonts.ptSans()),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 170,right: 17),
                        child: TextButton(onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) =>Forgot_Screen() ,));
                        }, child: Text('Forgot Password?',style: GoogleFonts.ptSans(fontSize: 12,color:Color(0xff000000)),)),

                      ),
                      SizedBox(height: 25),
                      Center(
                        child: GestureDetector(onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => VerificationCodeScreen(),));
                        },
                          child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 41, vertical: 17),
                          height: 51,
                          width: 147,
                          decoration: BoxDecoration(
                              color: Color(0xff2D201C),
                              borderRadius: BorderRadius.circular(26.5)),
                          child: Text(
                            ' LOG IN',
                            style: GoogleFonts.ptSans(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Colors.white),
                          ),
                                              ),
                        ),
                      ),
                      SizedBox(height: 12),
                      Center(
                  child: Text(
                    'or log up with',
                    style: GoogleFonts.ptSans(
                        fontSize: 12, color:Color(0xff000000)),
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
                    
                  },
                    child: Text(
                      'Don’t have an account?Sign Up',
                      style:
                          GoogleFonts.ptSans(fontSize: 14, color: Colors.black),
                    ),
                  ),
                )
                    ])))));
  }
}
