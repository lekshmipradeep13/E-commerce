import 'package:fashion_store/Core/core.dart';
import 'package:fashion_store/modules/Ongoing_Page/ongoing_Screen2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OngoingScreen extends StatefulWidget {
  const OngoingScreen({super.key});

  @override
  State<OngoingScreen> createState() => _OngoingScreenState();
}

class _OngoingScreenState extends State<OngoingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                  "https://images.unsplash.com/photo-1513094735237-8f2714d57c13?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8d29tYW4lMjBzaG9wcGluZ3xlbnwwfHwwfHx8MA%3D%3D",
                ),
                fit: BoxFit.fill)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Text(
              "Welcome to GemStore! ",
              style: GoogleFonts.ptSans(
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                  color: AppColors.secondaryColor),
            ),
            SizedBox(height: 13),
            Text(
              " The home for a fashionista",
              style: GoogleFonts.ptSans(
                  fontSize: 16, color: AppColors.secondaryColor),
            ),
            SizedBox(height: 60,),
            GestureDetector(onTap:() {
              Navigator.push(context, MaterialPageRoute(builder: (context) => OnGoingScreen2(),));
            }, 
              
              child: Container(
                height: 53,
                width: 193,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(width: 1.18,color: Colors.white),
                    color: Color(0xff464447).withOpacity(0.25)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 53, vertical: 15),
                  child: Text(
                    'Get Started',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.ptSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffFFFFFF)),
                  ),
                ),
              ),
            ),
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
