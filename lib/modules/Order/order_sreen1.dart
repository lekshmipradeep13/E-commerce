
import 'package:fashion_store/modules/Order/cancelled_screen.dart';
import 'package:fashion_store/modules/Order/delivered_screen.dart';
import 'package:fashion_store/modules/Order/pending_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreen1State();
}

class _OrderScreen1State extends State<OrderScreen> {
  PageController pageController=PageController();
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/optionicon.png', scale: 4),
        title: Text('My Orders'),
        actions: [
          Image.asset(
            'assets/bellicon.png',
            width: 26,
            height: 26,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 14,top:32 ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 33,right: 33),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedindex = 0;
                      
                      });
                       pageController.nextPage(duration: Duration(milliseconds: 200), curve: Curves.bounceIn);
                    },
                    child: Container(
                        width: 91,
                        height: 28,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color:
                                selectedindex == 0 ? Colors.black : Colors.white),
                        child: Center(
                          child: Text(
                            'Pending',
                            style: GoogleFonts.ptSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: selectedindex == 0
                                    ? Colors.white
                                    : Colors.black),
                          ),
                        )),
                  ),
                  SizedBox(width: 18,),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedindex = 1;
                      });
                       pageController.nextPage(duration: Duration(milliseconds: 200), curve: Curves.bounceIn);
                    },
                    child: Container(
                        width: 91,
                        height: 28,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color:
                                selectedindex == 1 ? Colors.black : Colors.white),
                        child: Center(
                          child: Text(
                            'Delivered',
                            style: GoogleFonts.ptSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: selectedindex == 1
                                    ? Colors.white
                                    : Colors.black),
                          ),
                        )),
                  ),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedindex = 2;
                        });
                        pageController.nextPage(duration: Duration(milliseconds: 200), curve: Curves.bounceIn);
                      },
                      child: Container(
                        width: 91,
                        height: 28,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color:
                                selectedindex == 2 ? Colors.black : Colors.white),
                        child: Center(
                          child: Text('Cancelled',
                              style: GoogleFonts.ptSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: selectedindex == 2
                                      ? Colors.white
                                      : Colors.black)),
                        ),
                      )),
                ],
              ),
            ),
    Expanded(
      child: selectedindex==0?PendingScreen(onNext: () {
        
      },):selectedindex==1?DeliveredScreen(onNext: () {
        
      },):CancelledScreen()
            // child: PageView(  scrollDirection: Axis.horizontal,
            
            // controller:pageController,

            // onPageChanged: (value) {
             
            //   setState(() {
            //      selectedindex=value;
            //   });
            // },
            //   children: [
              
            //   PendingScreen(
            //     onNext: () {
            //       pageController.nextPage(duration: Duration(milliseconds: 100), curve: Easing.standard);
            //     },
            //   ),
            //   DeliveredScreen(onNext: () {
            //       pageController.nextPage(duration: Duration(milliseconds: 100), curve: Easing.standard);
            //     },),
            //   CancelledScreen()
            
            // ],),
          )
          ],
        ),
      ),
    );
  }
}
