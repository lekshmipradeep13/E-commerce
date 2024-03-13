import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RateScreen extends StatefulWidget {
  const RateScreen({super.key});

  @override
  State<RateScreen> createState() => _RateScreenState();
}

class _RateScreenState extends State<RateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset('assets/back arrow.png', height: 32, width: 32)),
        title: Center(
            child: Text(
          'Rate Product',
          style: GoogleFonts.ptSans(fontSize: 18,color: Color(0xff1D1F22)),
        )),
      ),body: Column(children: [],),
      );
  }
}