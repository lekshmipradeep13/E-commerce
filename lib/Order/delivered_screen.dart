import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeliveredScreen extends StatefulWidget {
  final VoidCallback onNext;
  const DeliveredScreen({super.key,required this.onNext});

  @override
  State<DeliveredScreen> createState() => _DeliveredScreenState();
}

class _DeliveredScreenState extends State<DeliveredScreen> {
  int pageIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:        
            Container(padding: EdgeInsets.only(top: 18,left: 25,right: 15,bottom: 15),
              width: 336,
              height: 186,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.symmetric(horizontal: BorderSide(color: Color(0xffF9F9F9),),vertical: BorderSide(color: Color(0xffF9F9F9))),boxShadow: [BoxShadow(blurRadius: 16,color: Color(0xff0F0F0F33),spreadRadius: -8,)],color: Colors.white),
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Order #1524'),
                Text('13/05/2021 '),
        
              
                ],),
                 Row(children: [Text('pending',style: GoogleFonts.ptSans(color: Colors.red),)],)
                  
                ],
              ),
            ),);
  }
}