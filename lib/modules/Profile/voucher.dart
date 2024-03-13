import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VoucherScreen extends StatefulWidget {
  const VoucherScreen({super.key});

  @override
  State<VoucherScreen> createState() => _VoucherScreenState();
}

class _VoucherScreenState extends State<VoucherScreen> {
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
            'Voucher',
            textAlign: TextAlign.center,
            style: GoogleFonts.ptSans(fontSize: 18, color: Color(0xff121420)),
          ),
        ),
        backgroundColor: Color(0xFFE0E0E0),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 24,right: 24,top: 62),
        child: Column(
          children: [
            Container(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15 ),
                width: 327,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffFFFFFF)),
                child: Row(
                  children: [
                    Container(padding: EdgeInsets.symmetric(vertical: 20,horizontal: 12),
                      width: 68,
                      height: 68,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xff23262F)),
                          child: Text('50%',style: GoogleFonts.shantellSans(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 20),),
                    ),
                    SizedBox(width: 12),
                    Column(
                      children: [
                        Text('Black Friday',style: GoogleFonts.ptSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Color(0xff43484B)),),
                              SizedBox(height: 6),
                        Text('Sale off 50%',style: GoogleFonts.ptSans(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Color(0xff6E768A)),),
                              SizedBox(height: 6),
                        Text(
                          'Code: fridaysale',
                          style: GoogleFonts.ptSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Color(0xff43484B)),
                        ),
        
                      ],
                    ),
                    SizedBox(width: 77),
                    DottedLine(
                      direction: Axis.vertical,
                                  dashLength:10 ,
                                  dashGapLength: 3,
                                  lineThickness: 1,
                                  dashRadius: 16,
                                  dashColor: Color(0xffC3C3C3),
                                  // lineLength: double.infinity,
                                ),
                                SizedBox(width: 10),
        Column(children: [
          Text('Exp.',style: GoogleFonts.shantellSans(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xff777E90)),),
          SizedBox(height: 15,),
            Text('20',style: GoogleFonts.shantellSans(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xff141416)),),
        SizedBox(height: 5,),
        Text('Dec.',style: GoogleFonts.shantellSans(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xff141416)),)
        
        
          ],)
        
        
                  ],
                )),
                SizedBox(height: 28),
                  Container(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15 ),
                width: 327,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffFFFFFF)),
                child: Row(
                  children: [
                    Container(padding: EdgeInsets.symmetric(vertical: 20,horizontal: 12),
                      width: 68,
                      height: 68,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xff23262F)),
                          child: Text('30%',style: GoogleFonts.shantellSans(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 20),),
                    ),
                    SizedBox(width: 12),
                    Column(
                      children: [
                        Text('Holiday Sale',style: GoogleFonts.ptSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Color(0xff43484B)),),
                              SizedBox(height: 6),
                        Text('Sale off 30%',style: GoogleFonts.ptSans(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Color(0xff6E768A)),),
                              SizedBox(height: 6),
                        Text(
                          'Code: holiday30',
                          style: GoogleFonts.ptSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Color(0xff43484B)),
                        ),
        
                      ],
                    ),
                    SizedBox(width: 77),
                    DottedLine(
                      direction: Axis.vertical,
                                  dashLength:10 ,
                                  dashGapLength: 3,
                                  lineThickness: 1,
                                  dashRadius: 16,
                                  dashColor: Color(0xffC3C3C3),
                                  // lineLength: double.infinity,
                                ),
                                SizedBox(width: 10),
        Column(children: [
          Text('Exp.',style: GoogleFonts.shantellSans(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xff777E90)),),
          SizedBox(height: 15,),
            Text('22',style: GoogleFonts.shantellSans(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xff141416)),),
        SizedBox(height: 5,),
        Text('Dec.',style: GoogleFonts.shantellSans(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xff141416)),)
        
        
          ],)
        
        
                  ],
                )),
                 SizedBox(height: 28),
                  Container(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15 ),
                width: 327,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffFFFFFF)),
                child: Row(
                  children: [
                    Container(padding: EdgeInsets.symmetric(vertical: 20,horizontal: 12),
                      width: 68,
                      height: 68,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xff23262F)),
                          child: Text('20%',style: GoogleFonts.shantellSans(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 20),),
                    ),
                    SizedBox(width: 12),
                    Column(
                      children: [
                        Text('First order',style: GoogleFonts.ptSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Color(0xff43484B)),),
                              SizedBox(height: 6),
                        Text('20% off your first order',style: GoogleFonts.ptSans(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Color(0xff6E768A)),),
                              SizedBox(height: 6),
                        Text(
                          'Code: fridaysale',
                          style: GoogleFonts.ptSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Color(0xff43484B)),
                        ),
        
                      ],
                    ),
                    SizedBox(width: 50),
                    DottedLine(
                      direction: Axis.vertical,
                                  dashLength:10 ,
                                  dashGapLength: 3,
                                  lineThickness: 1,
                                  dashRadius: 16,
                                  dashColor: Color(0xffC3C3C3),
                                  // lineLength: double.infinity,
                                ),
                                SizedBox(width: 10),
        Column(children: [
          Text('Exp.',style: GoogleFonts.shantellSans(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xff777E90)),),
          SizedBox(height: 15,),
            Text('28',style: GoogleFonts.shantellSans(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xff141416)),),
        SizedBox(height: 5,),
        Text('Dec.',style: GoogleFonts.shantellSans(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xff141416)),)
        
        
          ],)
        
        
                  ],
                )),
          ],
        ),
      ),
    );
  }
}


