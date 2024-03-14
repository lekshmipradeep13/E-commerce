import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class RateScreen extends StatefulWidget {
  const RateScreen({super.key});

  @override
  State<RateScreen> createState() => _RateScreenState();
}

class _RateScreenState extends State<RateScreen> {
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
          'Rate Product',
          style: GoogleFonts.ptSans(fontSize: 18, color: Color(0xff1D1F22)),
        )),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 46,
              ),
              Center(
                child: Container(
                    height: 56,
                    width: 309,decoration: BoxDecoration(borderRadius: BorderRadius.circular(6),
                    color: Color(0xff575757)),
                    child: Row(
                      children: [SizedBox(width: 10,
                ),
                        Icon(Icons.wallet_giftcard_rounded),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Submit your review to get 40 points',
                          style: GoogleFonts.ptSans(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    )),
              ),SizedBox(height: 36,),
               RatingBar.builder(
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder: (context, _) =>
                                Icon(Icons.star, color: Colors.green, size: 15),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                          SizedBox(height: 50,),
                          TextField(decoration: InputDecoration(hintText: 'Would you like to write anything about this product?',contentPadding: EdgeInsets.symmetric(vertical: 267),
                          border: OutlineInputBorder()),
                          )
            ],
          ),
        ],
      ),
    );
  }
}
