import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:fashion_store/modules/Register/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';

class OnGoingScreen2 extends StatefulWidget {
  const OnGoingScreen2({super.key});

  @override
  State<OnGoingScreen2> createState() => _CarousilPageState();
}

class _CarousilPageState extends State<OnGoingScreen2> {
  int _currentPageIndex = 0;
  CarouselController carouselController = CarouselController();
  List<String> discoverTexts = [
    'Discover something new',
    'Explore amazing deals',
    'Find your favorite items',
  ];

  List<String> discoverSubTexts = [
    'Special new arrivals just for you',
    'Favorite brands and hottest trends',
    'Relax and let us bring the style to you',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                  child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(
                      height: 17,
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Text(discoverTexts[_currentPageIndex],
                          style: GoogleFonts.ptSans(fontSize: 20)),
                    ),
                    // SizedBox(
                    //   height: 17,
                    // ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Text(discoverSubTexts[_currentPageIndex],
                          style: GoogleFonts.ptSans(fontSize: 14)),
                    )
                  ],
                ),
              )),
              Expanded(
                child: Container(
                  color: Color(0xff464447),
                  height: 351,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 170),
                        child: DotsIndicator(
                          dotsCount: 3,
                          position: _currentPageIndex.toInt(),
                          onTap: (position) {
                            setState(() {
                              _currentPageIndex = position.toInt();
                              carouselController
                                  .animateToPage(_currentPageIndex,duration: Duration(milliseconds: 500));
                            });
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.white60),
                                side: MaterialStatePropertyAll(
                                    BorderSide(color: Colors.white))),
                            onPressed: ()async {
                              final box = GetStorage();
                            await  box.write("add", true);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignUPScreen(),
                                  ));
                            },
                            child: Text(
                              'Shopping now',
                              style: TextStyle(color: Colors.white),
                            )),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Align(
            child: CarouselSlider(
                items: [
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(4)),
                    // color: Colors.white,
                    child: Image.asset('assets/onboard1.png'),
                  ),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(4)),
                    // color: Colors.white,
                    child: Image.asset('assets/onboard2.png'),
                  ),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(4)),
                    // color: Colors.white,
                    child: Image.asset('assets/onboard3.png'),
                  ),
                ],
                options: CarouselOptions(
                  height: 268,
                  enlargeCenterPage: false,
                  enableInfiniteScroll: false,
                  viewportFraction: 0.65,
                  autoPlay: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentPageIndex = index;
                    });
                  },
                )),
          ),
        ],
      ),
    );
  }
}
