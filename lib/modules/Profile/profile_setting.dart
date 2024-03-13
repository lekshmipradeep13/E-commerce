import 'package:fashion_store/modules/Profile/payment_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileSettingScreen extends StatefulWidget {
  const ProfileSettingScreen({super.key});

  @override
  State<ProfileSettingScreen> createState() => _ProfileSettingScreenState();
}

class _ProfileSettingScreenState extends State<ProfileSettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Profile Setting',
            // textAlign: TextAlign.center,
            style: GoogleFonts.ptSans(fontSize: 18, color: Color(0xff121420),fontWeight: FontWeight.w700),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30,right: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                  child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/profileimg.png'),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: CircleAvatar(
                          radius: 18,
                          backgroundColor: Color(0xff626262),
                          child: Icon(
                            Icons.camera_alt_sharp,
                            color: Colors.white,
                          )),
                    ),
                  ],
                ),
              )),
              SizedBox(
                height: 94,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 176,
                    child: TextField(
                      decoration: InputDecoration(labelText: 'First Name',labelStyle: GoogleFonts.ptSans(color: Color(0xffA6ABC4),fontSize: 14)),
                    ),
                  ),
                  SizedBox(width: 15),
                  SizedBox(
                    width: 123,
                    child: TextField(
                      decoration: InputDecoration(labelText: 'Last Name',labelStyle: GoogleFonts.ptSans(color: Color(0xffA6ABC4),fontSize: 14)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              SizedBox(width: 314,
                child: TextField(
                  decoration: InputDecoration(labelText: 'Email',labelStyle: GoogleFonts.ptSans(color: Color(0xffA6ABC4),fontSize: 14)),
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 77,
                    child: TextField(
                      decoration: InputDecoration(labelText: ' Gender',labelStyle: GoogleFonts.ptSans(color: Color(0xffA6ABC4),fontSize: 14)),
                    ),
                  ),
                  SizedBox(width: 15),
                  SizedBox(width:222 ,
                    child: TextField(
                      decoration: InputDecoration(labelText: ' Phone',labelStyle: GoogleFonts.ptSans(color: Color(0xffA6ABC4),fontSize: 14)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 121),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PaymentScreen(),
                        ));
                  },
                  child: Container(
                    padding:
                        EdgeInsets.only(left: 48, right: 48, top: 13, bottom: 12),
                    height: 48,
                    width: 203,
                    decoration: BoxDecoration(
                        color: Color(0xff2D201C),
                        borderRadius: BorderRadius.circular(24)),
                    child: Text(
                      ' Save change',
                      style: GoogleFonts.ptSans(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
