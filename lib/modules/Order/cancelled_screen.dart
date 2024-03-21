import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CancelledScreen extends StatefulWidget {
  const CancelledScreen({super.key});

  @override
  State<CancelledScreen> createState() => _CancelledScreenState();
}

class _CancelledScreenState extends State<CancelledScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 24,left: 12,right: 12),
        child: Container(
          padding: EdgeInsets.only(top: 18, left: 25, right: 15, bottom: 15),
          width: 336,
          height: 186,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.symmetric(
                  horizontal: BorderSide(
                    color: Color(0xffF9F9F9),
                  ),
                  vertical: BorderSide(color: Color(0xffF9F9F9))),
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Color(0xff0F0F0F33),
                  spreadRadius: -1,
                  offset: Offset(0, 9)
                )
              ],
              color: Colors.white),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Order #1524'),
                  Text('13/05/2021 '),
                ],
              ),
               SizedBox(height: 24,),
              Row(
                
                children: [
                  Text('Tracking number: '),
                  Text(' IK287368838 '),
                ],
              ),
               SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('Quanlity:'),
                      Text(' 2 '),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Subtotal:'),
                      Text(' \$110 '),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Cancelled',
                    style: GoogleFonts.ptSans(color: Colors.red),
                  ),
                  Container(
                    width: 100,
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.white,
                        border: Border.all()),
                        child: Center(child: Text('Details')),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
