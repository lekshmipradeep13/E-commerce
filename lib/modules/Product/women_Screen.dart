import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:fashion_store/modules/Product/Controller/home_controller.dart';
import 'package:fashion_store/modules/Product/Model/product_model.dart';
import 'package:fashion_store/modules/Product/collection_page1.dart';
import 'package:fashion_store/modules/Product/product_Details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WomenScreen extends StatefulWidget {
  WomenScreen({super.key});

  @override
  State<WomenScreen> createState() => _WomenScreenState();
}

class _WomenScreenState extends State<WomenScreen> {
  PageController controller = PageController();

  int currentPageIndex = 0;
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Consumer<Productcontroller>(
      builder: (context, value, child) => Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 32, right: 32, top: 30),
                child: Column(
                  children: [
                    Stack(children: [
                      CarouselSlider(
                        items: [
                          Container(
                            width: 312,
                            height: 168,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(
                                      'assets/homeimg1.png',
                                    ),
                                    fit: BoxFit.fill)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 188),
                                  child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  CollectionSreen1(),
                                            ));
                                      },
                                      child: Text(
                                        'Autumn Collection 2021',
                                        style: GoogleFonts.ptSans(
                                            color: Colors.white, fontSize: 22),
                                      )),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 312,
                            height: 168,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(
                                      'assets/homeimg1.png',
                                    ),
                                    fit: BoxFit.fill)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 188),
                                  child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  CollectionSreen1(),
                                            ));
                                      },
                                      child: Text(
                                        'Autumn Collection 2021',
                                        style: GoogleFonts.ptSans(
                                            color: Colors.white, fontSize: 22),
                                      )),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 312,
                            height: 168,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(
                                      'assets/homeimg1.png',
                                    ),
                                    fit: BoxFit.fill)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 188),
                                  child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  CollectionSreen1(),
                                            ));
                                      },
                                      child: Text(
                                        'Autumn Collection 2021',
                                        style: GoogleFonts.ptSans(
                                            color: Colors.white, fontSize: 22),
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ],
                        options: CarouselOptions(
                          enableInfiniteScroll: false,
                          onPageChanged: (index, reason) {
                            print(index);
                            setState(() {
                              pageIndex = index;
                            });
                          },
                          viewportFraction: 1,
                          height: 200,
                          autoPlay: false,
                          autoPlayCurve: Curves.easeInOut,
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 500),
                        ),
                      ),
                      Positioned(
                        left: 125,
                        bottom: 10,
                        child: DotsIndicator(
                          position: pageIndex,
                          dotsCount: 3,
                          decorator: DotsDecorator(activeColor: Colors.white),
                        ),
                      )
                    ]),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 32, right: 32, top: 35, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Feature Products',
                            style: GoogleFonts.ptSans(fontSize: 20),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Show all',
                                style: GoogleFonts.ptSans(
                                    fontSize: 13,
                                    color: const Color(0xff9B9B9B)),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 230,
                      width: double.infinity,
                      child: ListView.builder(
                        itemCount: value.Productlist.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ProductDetilScreen(
                                          product: value.Productlist[index]),
                                    ));
                              },
                              child: SizedBox(
                                height: 220,
                                width: 126,
                                child: Column(
                                  children: [
                                    Container(
                                      height: 172, width: 126,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          image: DecorationImage(
                                              image: AssetImage(value
                                                  .Productlist[index].imageUrl),
                                              fit: BoxFit.fill)),

                                      // child: Image.asset(value.Productlist[index].imageUrl,fit: BoxFit.fill,),
                                    ),

                                    // SizedBox(height: 10),
                                    Text(value.Productlist[index].productname),
                                    Text(value.Productlist[index].price
                                        .toString())
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 487,
                height: 171,
                color: Color(0xffF8F8FA),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 39, left: 70),
                      child: Column(
                        children: [
                          Text(
                            'NEW COLLECTION',
                            style: GoogleFonts.ptSans(
                                fontSize: 12, color: Color(0xff777E90)),
                          ),
                          SizedBox(
                            height: 23,
                          ),
                          Text(
                            'HANG OUT &\n PARTY',
                            style: GoogleFonts.ptSans(
                                fontSize: 20, color: Color(0xff353945)),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Image.asset(
                      'assets/imge0.png',
                      width: 119,
                      height: 158,
                    )
                  ],
                ),
              ),
              SizedBox(height: 38),
              Container(
                padding: EdgeInsets.only(left: 32, right: 32),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Recommended',
                            style: GoogleFonts.ptSans(
                                fontSize: 20, color: Color(0xff000000))),
                        Text('Show all',
                            style: GoogleFonts.ptSans(
                                fontSize: 13, color: Color(0xff9B9B9B)))
                      ],
                    ),
                    SizedBox(height: 30),
                    SizedBox(
                      height: 67,
                      width: double.infinity,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: value.Collectionlist.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Container(
                              width: 203,
                              height: 66,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8)),
                              child: Row(
                                children: [
                                  Container(width: 66,
                                      height: 66,
                                    child: Image.asset(
                                      value.Collectionlist[index].imageUrl,
                                      
                                      fit: BoxFit.fill,
                                      
                                    ),
                                  ),
                                  SizedBox(width: 9,),
                                  Padding(
                                    padding: const EdgeInsets.only(top:13,bottom: 13 ),
                                    child: Column(
                                      children: [
                                        Text(
                                          value.Collectionlist[index].productname,style: GoogleFonts.ptSans(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xff1D1F22)),
                                        ),
                                         Text(
                                          value.Collectionlist[index].price.toString(),
                                          style: GoogleFonts.ptSans(fontSize: 16,fontWeight: FontWeight.w700,color: Color(0xff1D1F22),
                                         )),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 34,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Top Collection',
                            style: GoogleFonts.ptSans(
                                fontSize: 20, color: Color(0xff000000))),
                        Text('Show all',
                            style: GoogleFonts.ptSans(
                                fontSize: 13, color: Color(0xff9B9B9B)))
                      ],
                    ),
                    SizedBox(height: 33),
                    Container(
                      width: 312,
                      height: 141,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffF8F8FA)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                ' I Sale up to 40%',
                                style: GoogleFonts.ptSans(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 14,
                                    color: Color(0xff777E90)),
                              ),
                              // SizedBox(height: 23),
                              Text(
                                'FOR SLIM \n& BEAUTY',
                                style: GoogleFonts.ptSans(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 20,
                                    color: Color(0xff777E90)),
                              ),
                            ],
                          ),
                          Image.asset(
                            'assets/homeimg8.png',
                            width: 139,
                            height: 141,
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 19),
                    Container(
                      height: 210,
                      width: 312,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffF8F8FA)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Summer Collection 2021',
                                style: GoogleFonts.ptSans(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12,
                                    color: Color(0xff777E90)),
                              ),
                              // SizedBox(height: 27),
                              Text(
                                'Most sexy\n& fabulous \ndesign ',
                                style: GoogleFonts.ptSans(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                    color: Color(0xff353945)),
                              )
                            ],
                          ),
                          Image.asset(
                            'assets/homeimg9.png',
                            width: 152,
                            height: 229,
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Container(
                          width: 148,
                          height: 194,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffF8F8FA)),
                          child: Row(
                            children: [
                              Image.asset('assets/homeimg10.png'),
                              Padding(
                                padding: const EdgeInsets.only(top: 26),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text('T-Shirts',
                                        style: GoogleFonts.ptSans(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13,
                                            color: Color(0xff737680))),
                                    Text(
                                      'The \nOffice\n Life',
                                      style: GoogleFonts.ptSans(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 17,
                                          color: Color(0xff1D1F22)),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 148,
                          height: 194,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffF8F8FA)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text('Dresses',
                                        style: GoogleFonts.ptSans(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13,
                                            color: Color(0xff737680))),
                                    Text('Elegant \n Design',
                                        style: GoogleFonts.ptSans(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 18,
                                            color: Color(0xff1D1F22)))
                                  ],
                                ),
                              ),
                              Image.asset('assets/homeimg11.png')
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
