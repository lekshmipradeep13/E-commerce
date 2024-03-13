import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingCntrl extends ChangeNotifier{

  int textIndex = 0;


  List<Widget> data = [
Column(
                  children: [
                    SizedBox(height: 90),
                    Text(
                      "Discover something new",
                      style: GoogleFonts.ptSans(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Special new arrivals just for you",  
                      style: GoogleFonts.ptSans(fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),

                Column(
                  children: [
                    SizedBox(height: 90),
                    Text(
                      "Update trendy outfit",
                      style: GoogleFonts.ptSans(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Favorite brands and hottest trends",
                      style: GoogleFonts.ptSans(fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 90),
                    Text(
                      "Explore your true style",
                      style: GoogleFonts.ptSans(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Relax and let us bring the style to you",
                      style: GoogleFonts.ptSans(fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
  
  ];



  void onImageChnages(int index){
textIndex = index;
notifyListeners();
  }
}