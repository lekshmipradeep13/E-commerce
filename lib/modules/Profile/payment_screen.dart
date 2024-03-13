import 'package:carousel_slider/carousel_slider.dart';
import 'package:fashion_store/modules/Profile/addnewcard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Image.asset('assets/back arrow.png'),
        title: Text(
          'Payment',
          textAlign: TextAlign.center,
          style: GoogleFonts.ptSans(fontSize: 18, color: Color(0xff121420)),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 48),
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Card Management',
                    style: GoogleFonts.ptSans(
                        fontSize: 18, color: Color(0xff121420)),
                  ),
                  GestureDetector(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AddNewCardScreen(),));
                  },
                    child: Text('Add new+',
                        style: GoogleFonts.ptSans(
                            fontSize: 14, color: Color(0xffED0006))),
                  )
                ],
              ),
              SizedBox(height: 41),
              CarouselSlider(
                items: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/Frame 33246.png',
                            ),
                            fit: BoxFit.fill)),
                  ),
                ],
                options: CarouselOptions(
                  height: 191.0,
                  enlargeCenterPage: true,
                  // autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  // enableInfiniteScroll: true,
          
                  viewportFraction: 0.8,
                ),
              ),
              SizedBox(height: 58),
              Text(
                'or check out with',
                style: GoogleFonts.ptSans(fontSize: 12, color: Color(0xff33302E)),
              ),
              SizedBox(height: 57),
              Row(
                children: [
                  Container(padding: EdgeInsets.only(left: 16,right: 16,top: 8,bottom: 8),
                    width: 50,
                    height: 34,
                    decoration: BoxDecoration(border: Border.all()),
                    child: Image.asset('assets/PayPallogo.png'),
                  ),
                  SizedBox(width: 11),
                  Container(padding: EdgeInsets.only(left: 6,right: 6,top: 11,bottom: 11),
                    width: 50,
                    height: 34,
                    decoration: BoxDecoration(border: Border.all()),
                    child: Image.asset('assets/visa-logo.png'),
                  ),
                   SizedBox(width: 11),
                  Container(padding: EdgeInsets.only(left: 9,right: 9,top: 7,bottom: 7),
                    width: 50,
                    height: 34,
                    decoration: BoxDecoration(border: Border.all()),
                    child: Image.asset('assets/Mastercard.png'),
                  ),
                   SizedBox(width: 11),
                  Container(padding: EdgeInsets.only(left: 4,right: 4,top: 12,bottom: 12),
                    width: 50,
                    height: 34,
                    decoration: BoxDecoration(border: Border.all()),
                    child: Image.asset('assets/Alipay.png'),
                  ),
                   SizedBox(width: 11),
                  Container(padding: EdgeInsets.only(left: 4,right: 4,top: 12,bottom: 12),
                    width: 50,
                    height: 34,
                    decoration: BoxDecoration(border: Border.all(),color: Color(0xff1F72CD)),
                    child: Image.asset('assets/AMEX.png'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
