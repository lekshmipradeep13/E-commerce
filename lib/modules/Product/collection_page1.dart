import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:fashion_store/modules/Product/Controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CollectionSreen1 extends StatefulWidget {
  const CollectionSreen1({super.key});

  @override
  State<CollectionSreen1> createState() => _CollectionSreen1State();
}

class _CollectionSreen1State extends State<CollectionSreen1> {
  bool viewAll = false;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Consumer<Productcontroller>(
      builder: (context, value, child) => Scaffold(
          body: ListView(children: [
        Container(
          height: height * 0.35,
          width: 355,
          child: Stack(children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/homeimg1.png'),
                  fit: BoxFit.fill,
                ),
                color: Color(0xffFFFCFA),
              ),
            ),
            Positioned(
                left: 32,
                top: 26,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'assets/back arrow.png',
                    width: 32,
                    height: 32,
                  ),
                )),
            Positioned(
                right: 32,
                top: 26,
                child: CircleAvatar(
                    radius: 32,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.favorite))),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 57,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: Colors.white,
                ),
              ),
            ),
          ]),
        ),
        Expanded(
            child: Container(
          color: Colors.white,
          // height: 298,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Padding(
              padding: const EdgeInsets.only(top: 26),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Column(
                      children: [
                        Container(
                          width: 168,
                          height: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                  image: AssetImage('assets/collection1.png'))),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Container(
                          width: 162,
                          height: 244,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                  image: AssetImage('assets/collection2.png'))),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 154,
                        height: 228,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                                image: AssetImage('assets/collection2.png'))),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Container(
                        width: 154,
                        height: 230,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                                image: AssetImage('assets/collection2.png'))),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Container(
                        width: 151,
                        height: 52,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15)),
                            color: Colors.black),
                        child: Center(
                            child: Text(
                          'View All',
                          style: GoogleFonts.ptSans(
                              fontSize: 16, color: Colors.white),
                        )),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )),
        Expanded(
            child: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Container(
              color: Colors.white,
              height: 298,
              width: double.infinity,
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Padding(
                      padding: const EdgeInsets.only(top: 26),
                      child: Row(children: [
                        Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Column(children: [
                              Container(
                                width: 168,
                                height: 250,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                        image: AssetImage(value
                                            .Collectionlist[index].imageUrl))),
                                child: Column(
                                  children: [
                                    Text('Knitted Vest Dress'),
                                    Text('Knitted Vest Dress')
                                  ],
                                ),
                              ),
                            ]))
                      ]))),
            );
          },
        )),
      ])),
    );
  }
}
