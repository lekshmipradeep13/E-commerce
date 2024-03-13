import 'package:fashion_store/modules/Register/verification_Code.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Forgot_Screen extends StatefulWidget {
  const Forgot_Screen({super.key});

  @override
  State<Forgot_Screen> createState() => _Forgot_ScreenState();
}

class _Forgot_ScreenState extends State<Forgot_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(leading:GestureDetector(onTap:() {
      Navigator.pop(context);
    }, 
      child: Image.asset('assets/back arrow.png',height: 32,width: 32)) ,),
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
                    SizedBox(height: 18),
                    Text(
                      'Enter email associated with your account and we’ll send and email with intructions to reset your password',
                      style: GoogleFonts.ptSans(fontSize: 14),
                    ),
                    SizedBox(height: 54),
                     TextFormField(onFieldSubmitted: (value) {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => VerificationCodeScreen(),));
                     },
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          
                            labelText: 'enter your email here',
                            labelStyle: GoogleFonts.ptSans()),
                      ),
                  ])))),
    );
  }
}
