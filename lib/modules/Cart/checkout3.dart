import 'package:fashion_store/modules/Order/order_sreen1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CompleteScreen extends StatefulWidget {
  const CompleteScreen({super.key});

  @override
  State<CompleteScreen> createState() => _CompleteScreenState();
}

class _CompleteScreenState extends State<CompleteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 43,left: 30,right: 30),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Order Completed',
              style: GoogleFonts.ptSans(fontSize: 25, color: Color(0xff33302E)),
            ),
            SizedBox(
              height: 79,
            ),
            Center(
              child: Image.asset(
                'assets/ordercmpltedicon.png',
                height: 110,
                width: 101,
              ),
            ),
            SizedBox(
              height: 55,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 45,right: 58),
              child: Center(
                child: Text(
                                     '             Thank you for your purchase.           \n      You can view your order in ‘My Orders’        \n                         section.',
                  style: GoogleFonts.ptSans(fontSize: 12, color: Color(0xff33302E)),
                ),
              ),
            ),
            SizedBox(
              height: 108,
            ),
            
              SizedBox(height: 48,
                            width: 315,
                child: CupertinoButton(
                  borderRadius: BorderRadius.circular(24),
                  child: Text(
                    'Continue shopping',
                    style: GoogleFonts.ptSans(fontSize: 16),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>OrderScreen(),));
                  },
                  color: Colors.black,
                ),
              ),
            
          ],
        ),
      ),
    );
  }
}
