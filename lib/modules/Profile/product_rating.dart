import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductRating extends StatefulWidget {
  const ProductRating({super.key});

  @override
  State<ProductRating> createState() => _ProductRatingState();
}

class _ProductRatingState extends State<ProductRating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/back arrow.png'),
        title: Center(child: Text('Share your feedback')),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 29, right: 38, top: 46),
        child: ListView(
          children: [
            Center(
              child: Text(
                'What is your opinion of GemStore?',
                style:
                    GoogleFonts.ptSans(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 24),
            Center(
              child: RatingBar.builder(
                initialRating: 4,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.black,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            ),
            SizedBox(
              height: 69,
            ),
            Container(padding: EdgeInsets.only(top:29 ,left:26 ,right: 27),
              // height: 267,
              width: 308,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 9,
                        spreadRadius: -12,
                        offset: Offset(0, -12),
                        color: Color(0xff00000026))
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    minLines: 5,
                    maxLines: 6,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText:
                            'Would you like to write anything about\n this product? ',hintStyle: GoogleFonts.ptSans(fontSize: 12,color: Color(0xff5A5A5A))),
                  ),
                  SizedBox(height: 55,),
                  Text('50 characters',style: GoogleFonts.ptSans(fontSize: 12,color: Color(0xff5A5A5A)),)
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/cameraicon.png',
                  height: 64,
                  width: 69,
                ),
                SizedBox(
                  width: 24,
                ),
                Image.asset(
                  'assets/galleryicon.png',
                  height: 64,
                  width: 69,
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 48,
              width: 315,
              child: CupertinoButton(
                borderRadius: BorderRadius.circular(24),
                color: Colors.black,
                child: Text(
                  'Send feedback',
                  style: GoogleFonts.ptSans(color: Colors.white, fontSize: 16),
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
