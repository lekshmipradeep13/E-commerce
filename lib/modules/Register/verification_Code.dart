
import 'package:fashion_store/modules/Register/password_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class VerificationCodeScreen extends StatefulWidget {
  const VerificationCodeScreen({super.key});

  @override
  State<VerificationCodeScreen> createState() => _VerificationCodeScreenState();
}

class _VerificationCodeScreenState extends State<VerificationCodeScreen> {
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
                        'Verification code ',
                        style: GoogleFonts.ptSans(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 24),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Please enter the verification code we sent to your email address',
                        style: GoogleFonts.ptSans(fontSize: 14),
                      ),
                      SizedBox(height: 58),
                      Pinput(onCompleted: (value) {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => PasswordSCreen(),));
                      },
                        length: 4,defaultPinTheme: PinTheme(width: 268,height: 58,
                      
                        decoration: BoxDecoration(
                        shape: BoxShape.circle,border: Border.all())
                        ),
                        keyboardType: TextInputType.number,)
                    ])))));
  }
}
