import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentScreen extends StatefulWidget {
  final  VoidCallback onNext;
  const PaymentScreen({super.key,required this.onNext});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  bool isChecked = false;
  int pageindex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(left: 12,top:29),
            child: Text(
              'STEP 2',
              style: GoogleFonts.ptSans(fontSize: 11),
            ),
          ),
          Text(
            ' Payment',
            style: GoogleFonts.ptSans(fontSize: 25),
          ),
          SizedBox(height: 37),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Row(
              children: [
                Container(
                  padding:
                      EdgeInsets.only(left: 29, right: 29, top: 12, bottom: 6),
                  width: 94,
                  height: 64,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    color: Colors.white,
                  ),
                  child: Column(children: [
                    Image.asset('assets/Money icon.png'),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Cash',
                      style: GoogleFonts.ptSans(
                          fontWeight: FontWeight.w400, fontSize: 12),
                    )
                  ]),
                ),
                SizedBox(width: 16),
                Container(
                  padding:
                      EdgeInsets.only( top: 12, bottom: 6),
                  width: 95,
                  height: 64,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    color: Colors.white,
                  ),
                  child: Column(children: [
                    Image.asset('assets/Money icon.png',width: 35,height:22 ,),
                    SizedBox(
                      height: 6,
                    ),
                    Center(
                      child: Text(
                        'CreditCard',
                        style: GoogleFonts.ptSans(
                            fontWeight: FontWeight.w200, fontSize: 10),
                      ),
                    )
                  ]),
                ),
                SizedBox(width: 16),
                Container(
                  padding:
                      EdgeInsets.only(left: 29, right: 29, top: 12, bottom: 6),
                  width: 94,
                  height: 64,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    color: Colors.white,
                  ),
                  child: 
                    Image.asset('assets/3 dot.png',width: 34,height: 8,color: Color(0xff6E768A),),
                   
                    
                  
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 52),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Choose your card'),
                Text(
                  'Add new+',
                  style: GoogleFonts.ptSans(color: Colors.red),
                ),
              ],
            ),
          ),
          CarouselSlider(
            items: [
              Container(
                width: 327,
                height: 191,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/visacard.png'))),
              )
            ],
            options: CarouselOptions(
              height: 200,
              autoPlay: false,
              autoPlayCurve: Curves.easeInOut,
              autoPlayAnimationDuration: Duration(milliseconds: 500),
            ),
          ),
          SizedBox(height: 44),
          Padding(
            padding: const EdgeInsets.only(left: 37),
            child: Text('or check out with'),
          ),
          SizedBox(
            height: 19,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 37),
            child: Row(
              children: [
                Container(
                  padding:
                      EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                  width: 50,
                  height: 34,
                  decoration: BoxDecoration(border: Border.all()),
                  child: Image.asset('assets/PayPallogo.png'),
                ),
                SizedBox(width: 11),
                Container(
                  padding:
                      EdgeInsets.only(left: 6, right: 6, top: 11, bottom: 11),
                  width: 50,
                  height: 34,
                  decoration: BoxDecoration(border: Border.all()),
                  child: Image.asset('assets/visa-logo.png'),
                ),
                SizedBox(width: 11),
                Container(
                  padding:
                      EdgeInsets.only(left: 9, right: 9, top: 7, bottom: 7),
                  width: 50,
                  height: 34,
                  decoration: BoxDecoration(border: Border.all()),
                  child: Image.asset('assets/Mastercard.png'),
                ),
                SizedBox(width: 11),
                Container(
                  padding:
                      EdgeInsets.only(left: 4, right: 4, top: 12, bottom: 12),
                  width: 50,
                  height: 34,
                  decoration: BoxDecoration(border: Border.all()),
                  child: Image.asset('assets/Alipay.png'),
                ),
                SizedBox(width: 11),
                Container(
                  padding:
                      EdgeInsets.only(left: 4, right: 4, top: 12, bottom: 12),
                  width: 50,
                  height: 34,
                  decoration: BoxDecoration(
                      border: Border.all(), color: Color(0xff1F72CD)),
                  child: Image.asset('assets/AMEX.png'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Container(padding: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
            height: 455,
            width: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                      color: Color(0xff000000),
                      offset: Offset.zero,
                      blurRadius: 10,
                      spreadRadius: 0.0)
                ],
                color: Colors.white),
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Product price'),
                    Text('\$ 110'),
                  ],
                ),
                SizedBox(height: 24,),
                Divider(),
                 SizedBox(height: 24),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Shipping'),
                    Text('Freeship'),
                  ],
                ),
                SizedBox(height: 24,),
                Divider(),
                SizedBox(height: 24),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Freeship',style: GoogleFonts.ptSans(color: Colors.black,fontSize: 14),),
                    Text('\$ 110'),
                  ],
                ),
                SizedBox(height: 24,),
                Row(children: [
              Checkbox(value:isChecked , onChanged: (value) {
                setState(() {
                   isChecked = value!;
                });
              },),
              Text('I agree to Terms and conditions',style: GoogleFonts.ptSans(fontSize: 16,color: Color(0xff1D1F22)),)
                ],),
                SizedBox(height: 50,),
                SizedBox(
              height: 48,
              width: 315,
              child: CupertinoButton(
                borderRadius: BorderRadius.circular(24),
                child: Text(
                  'Place my order',
                  style: GoogleFonts.ptSans(fontSize: 16),
                ),
                onPressed: () {
                  widget.onNext();
                pageindex=2;
                },
                color: Colors.black,
              ),
            ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
