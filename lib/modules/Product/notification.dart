import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE0E0E0),
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset(
              'assets/back arrow.png',
              width: 32,
              height: 32,
            )),
        title: Center(
          child: Text(
            'Notification',
            textAlign: TextAlign.center,
            style: GoogleFonts.ptSans(fontSize: 18, color: Color(0xff121420)),
          ),
        ),
        backgroundColor: Color(0xFFE0E0E0),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 37),
        child: Column(
          children: [
            Container(padding: EdgeInsets.only(left: 23,right: 17,top: 20,bottom: 20),
              width: 315,
              height: 105,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Good morning! Get 20% Voucher',style: GoogleFonts.ptSans(fontSize: 14,fontWeight: FontWeight.w700,color: Color(0xff222222))),
                  SizedBox(height: 4,),
                  Text(
                      'Summer sale up to 20% off. Limited voucher.\n Get now!! 😜',style: GoogleFonts.ptSans(fontWeight: FontWeight.w400,fontSize: 13),)
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(padding: EdgeInsets.only(left: 23,right: 17,top: 18,bottom: 12),
                width: 315,
                height: 79,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                   child: Column(
                     children: [
                       Text('Special offer just for you',style: GoogleFonts.ptSans(fontSize: 14,fontWeight: FontWeight.w700,color: Color(0xff222222))),
                       Text('New Autumn Collection 30% off',style: GoogleFonts.ptSans(fontSize: 13,fontWeight: FontWeight.w400))
                     ],
                   ),
                   
                   ),
            SizedBox(height: 30),
            Container(padding: EdgeInsets.only(left: 23,right: 17,top: 20,bottom: 17,),
                width: 315,
                height: 77,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                  child: Column(
                     children: [
                       Text('Holiday sale 50%',style: GoogleFonts.ptSans(fontSize: 14,fontWeight: FontWeight.w700,color: Color(0xff222222)),),
                       Text('Tap here to get 50% voucher.',style: GoogleFonts.ptSans(fontSize: 13,fontWeight: FontWeight.w400),)
                     ],
                   ),  )
          ],
        ),
      ),
    );
  }
}
