import 'package:carousel_slider/carousel_slider.dart';
import 'package:fashion_store/modules/Profile/newcard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddNewCardScreen extends StatefulWidget {
  const AddNewCardScreen({super.key});

  @override
  State<AddNewCardScreen> createState() => _AddNewCardScreenState();
}

class _AddNewCardScreenState extends State<AddNewCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/back arrow.png'),
        title: Center(
            child: Text(
          'Add new card',
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 16),
        )),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 30, right: 30),
        child: Column(
          children: [
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
            SizedBox(height: 49),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Cardholder Name',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xff7A869A99)),
                ),
                SizedBox(height: 11),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13))),
                ),
                SizedBox(height: 29),
                Text(
                  'Card Number ',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xff7A869A99)),
                ),
                SizedBox(height: 11),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13))),
                ),
                SizedBox(height: 29),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: 142,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Expires',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color(0xff7A869A99)),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(13))),
                            ),
                          ],
                        )),
                    SizedBox(
                        width: 142,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'CVV',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color(0xff7A869A99)),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  fillColor: Color(0xffFCFCFC),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(13))),
                            ),
                          ],
                        ))
                  ],
                )
              ],
            ),
            SizedBox(height: 56),
            GestureDetector(onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => NewCardScreen(),));
            },
              child: Container(padding: EdgeInsets.only(left: 64,right: 64,top: 13,bottom: 13),
                height: 48,
                width: 203,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Color(0xff343434)),
                    child: Text('Add card',style: GoogleFonts.ptSans(fontSize: 16,color: Colors.white),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
