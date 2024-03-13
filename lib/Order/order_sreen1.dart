import 'package:fashion_store/Order/cancelled_screen.dart';
import 'package:fashion_store/Order/delivered_screen.dart';
import 'package:fashion_store/Order/pending_screen.dart';
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
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedindex = 0;
                    });
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
    Expanded(
            child: PageView(  scrollDirection: Axis.horizontal,
            controller:pageController,
            onPageChanged: (value) {
             
              setState(() {
                 selectedindex=value;
              });
            },
              children: [
              
              PendingScreen(
                onNext: () {
                  pageController.nextPage(duration: Duration(milliseconds: 100), curve: Easing.standard);
                },
              ),
              DeliveredScreen(onNext: () {
                  pageController.nextPage(duration: Duration(milliseconds: 100), curve: Easing.standard);
                },),
              CancelledScreen()
            
            ],),
          )
          ],
        ),
      ),
    );
  }
}
