
import 'package:fashion_store/modules/Order/rate_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderInfoScreen extends StatefulWidget {
  const OrderInfoScreen({super.key});

  @override
  State<OrderInfoScreen> createState() => _OrderInfoScreenState();
}

class _OrderInfoScreenState extends State<OrderInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset('assets/back arrow.png', height: 32, width: 32)),
        title: Center(
            child: Text(
          'Order #1514',
          style: GoogleFonts.ptSans(fontSize: 18,color: Color(0xff1D1F22)),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 47),
        child: Column(
          children: [
            Container(
              padding:
                  EdgeInsets.only(top: 24, bottom: 20, left: 35, right: 24),
              height: 92,
              width: 327,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff575757)),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        'Your order is delivered',
                        style: GoogleFonts.ptSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      Text('Rate product to get 5 points for collect.',
                          style: GoogleFonts.ptSans(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: Colors.white))
                    ],
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  Image.asset(
                    'assets/orderimage.png',
                    width: 51,
                    height: 46,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 26,
            ),
            Container(
              height: 114,
              width: 327,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    blurRadius: 13,
                    spreadRadius: -8,
                    color: Color(0xff0F0F0F33),
                    offset: Offset(0, 4),
                    blurStyle: BlurStyle.normal)
              ]),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 16, bottom: 8, left: 7, right: 12),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('Order number'), Text('#1514')],
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('Tracking Number'), Text('#1514')],
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('Delivery address'), Text('#1514')],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 41,
            ),
            Container(
              height: 247,
              width: 335,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 14,
                        spreadRadius: -8,
                        color: Color(0xff0F0F0F33),
                        offset: Offset(0, 5))
                  ]),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Maxi Dress'),
                      SizedBox(
                        width: 38,
                      ),
                      Text('x1'),
                      Text('\$68.00')
                    ],
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Maxi Dress'),
                      SizedBox(
                        width: 38,
                      ),
                      Text('x1'),
                      Text('\$68.00')
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Maxi Dress'),
                      SizedBox(
                        width: 38,
                      ),
                      Text('\$68.00')
                    ],
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Maxi Dress'),
                      SizedBox(
                        width: 38,
                      ),
                      Text('\$68.00')
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Container(
                  width: 168,
                  height: 44,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: Color(0xff777E90))),
              child: Center(child: Text('Return home')), ),
                SizedBox(
             width:24 ,
            ),
                GestureDetector(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RateScreen(),));
                },
                  child: Container(
                    width: 119,
                    height: 44,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(color: Color(0xff777E90)),color: Color(0xff343434)),
                  child: Center(child: Text('Rate',style: GoogleFonts.ptSans(fontSize: 16,color: Colors.white),)),),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
