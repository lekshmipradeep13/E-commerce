
import 'package:dots_indicator/dots_indicator.dart';
import 'package:fashion_store/modules/Cart/checkout1.dart';
import 'package:fashion_store/modules/Cart/checkout2.dart';
import 'package:fashion_store/modules/Cart/checkout3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckOutScreen1 extends StatefulWidget {
  const CheckOutScreen1({super.key});

  @override
  State<CheckOutScreen1> createState() => _CheckOutScreen1State();
}

class _CheckOutScreen1State extends State<CheckOutScreen1> {
  PageController pageController=PageController();
  int selectedindex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(onTap: () {
          Navigator.pop(context);
        },
          child: Image.asset('assets/back arrow.png', height: 28, width: 28)),
        title: Center(
            child: Text(
          'Check out',
          style: GoogleFonts.ptSans(fontSize: 18,color: Color(0xff1D1F22)),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 28),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left:55,right:54),
              child: Row(
                children: [
                  GestureDetector(onTap: () {
                    selectedindex==1;
                  },
                    child: Image.asset(
                      'assets/Location.png',
                      height: 22,
                      width: 22,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 11,),
                                  DotsIndicator(
                dotsCount: 5,
              
                decorator: DotsDecorator(size: Size(3, 3),
                activeSize: Size(3, 3),
                  color: Colors.grey, // Inactive color
                  activeColor: Colors.black12,
                ),
              ),
                 SizedBox(width: 17,),
                  Image.asset(
                    'assets/Bag.png',
                    height: 22,
                    width: 22,
                    color: selectedindex>0?Colors.black:null,
                  ),
                  SizedBox(width: 20,),
                  DotsIndicator(
                dotsCount: 5,
              
                decorator: DotsDecorator(size: Size(3, 3),
                activeSize: Size(3, 3),
                  color: Colors.grey, // Inactive color
                  activeColor: Colors.black12,
                ),
              ),
              SizedBox(width: 11,),
                  Image.asset(
                    'assets/verification icon.png',
                    height: 22,
                    width: 22,
                    color: selectedindex==2?Colors.black:null,
                  )
                ],
              ),
            ),
            Expanded(
              child: PageView(  scrollDirection: Axis.horizontal,
              controller:pageController,
              onPageChanged: (value) {
               
                setState(() {
                   selectedindex=value;
                });
              },
                children: [
                
                LocationScreen(
                  onNext: () {
                    pageController.nextPage(duration: Duration(milliseconds: 100), curve: Easing.standard);
                  },
                ),
                PaymentScreen(onNext: () {
                    pageController.nextPage(duration: Duration(milliseconds: 100), curve: Easing.standard);
                  },),
                CompleteScreen()
              
              ],),
            )
           
          ],
        ),
      ),
    );
  }
}








