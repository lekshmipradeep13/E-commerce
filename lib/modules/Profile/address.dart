import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            'Delivery address',
            textAlign: TextAlign.center,
            style: GoogleFonts.ptSans(fontSize: 18, color: Color(0xff121420)),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 53),
        child: Column(
          children: [
            Container(
              height: 110,
              width: 315,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffF4F4F4)),
            ),
            SizedBox(height: 28),
            Container(
              height: 110,
              width: 315,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffF4F4F4)),
            ),
          ],
        ),
      ),
    );
  }
}
