import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class carouselController extends ChangeNotifier{

  int imageindex = 0;


  List<Widget> data = [
 Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/shopping/automcrsl.png'),
                                fit: BoxFit.fill)),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            'Autumn \nCollection  \n2021',
                            style: GoogleFonts.ptSans(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4)),
                        child: Image.asset('assets/homeimg1.png'),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4)),
                        child: Image.asset('assets/homeimg1.png',
                            fit: BoxFit.fitWidth),
                      ),
  
  ];



  void onDotIndicatorChange(int index){
imageindex = index;
notifyListeners();
  }
}