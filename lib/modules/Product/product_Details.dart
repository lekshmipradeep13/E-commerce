import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:fashion_store/modules/Cart/cart_screen.dart';
import 'package:fashion_store/modules/Product/Controller/home_controller.dart';
import 'package:fashion_store/modules/Product/Model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProductDetilScreen extends StatefulWidget {
  final ProductModel product;
  const ProductDetilScreen({super.key, required this.product});

  @override
  State<ProductDetilScreen> createState() => _ProductDetilScreenState();
}

class _ProductDetilScreenState extends State<ProductDetilScreen> {
  int Colorindex = 0;
  int Sizeindex = 0;
  bool isExpanded = false;
   bool isExpanded2 = false;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Consumer<Productcontroller>(builder: (context, value, child) => 
      Scaffold(
          body: ListView(
        children: [
          Container(
            height: height * 0.35,
            width: 355,
            child: Stack(children: [
              CarouselSlider(
                items: [
                  Container(
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(widget.product.imageUrl),
                        fit: BoxFit.fill,
                      ),
                      color: Color(0xffFFFCFA),
                    ),
                  ),
                ],
                options: CarouselOptions(
                  viewportFraction: 1,
                  height: 300,
                  autoPlay: false,
                  autoPlayAnimationDuration: Duration(milliseconds: 500),
                ),
              ),
              Positioned(
                  left: 32,
                  top: 26,
                  child: GestureDetector(onTap: () {
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
                      child: 
                      GestureDetector(onTap: () {
                      
                      },
                        child: Icon(Icons.favorite)))),
              Positioned(
                  top: 240,
                  left: 167,
                  right: 160,
                  child: DotsIndicator(
                    dotsCount: 3,
                    position: 1,
                  )),
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
              // height: 298,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.product.productname,
                          style: GoogleFonts.ptSans(
                              color: Color(0xff1D1F22), fontSize: 18),
                        ),
                        Text(
                          widget.product.price.toString(),
                          style: GoogleFonts.ptSans(
                              fontSize: 26, color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(children: [
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
                      Text("(${widget.product.rating.toString()})")
                    ]),
                    Divider(),
                    Row(
                      children: [
                        Text('Color'),
                        SizedBox(
                          width: 168,
                        ),
                        Text('Size'),
                      ],
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    Row(
                      children: [
                        Row(
                            children: List.generate(
                                widget.product.colors!.length,
                                (index) => GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          Colorindex = index;
                                        });
                                      },
                                      child: CircleAvatar(
                                        backgroundColor: Colorindex == index
                                            ? Colors.grey
                                            : Colors.transparent,
                                        radius: 20,
                                        child: CircleAvatar(
                                          radius: 14,
                                          backgroundColor: Color(int.parse(
                                              "0xff${widget.product.colors![index]}")),
                                        ),
                                      ),
                                    ))),
                        SizedBox(
                          width: 80,
                        ),
                        Row(
                            children: List.generate(
                                widget.product.colors!.length,
                                (index) => GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          Sizeindex = index;
                                        });
                                      },
                                      child: CircleAvatar(
                                        backgroundColor: Sizeindex == index
                                            ? Colors.grey
                                            : Colors.transparent,
                                        radius: 20,
                                        child: CircleAvatar(
                                          radius: 14,
                                          backgroundColor: Color(0xffFAFAFA),
                                          // backgroundColor:Color(int.parse("0xff${widget.product.colors![index]}")),
                                          child: Text(
                                            widget.product.size![index]
                                                .toString(),
                                            style: GoogleFonts.ptSans(
                                                fontSize: 12,
                                                color: Color(0xffC5C5C5)),
                                          ),
                                        ),
                                      ),
                                    ))),
                      ],
                    ),
                    Divider(),
                    Row(
                      children: [
                        Text('Description'),
                        SizedBox(
                          width: 200,
                        ),
                        // DropdownButton(items: [], onChanged: (value) {
      
                        // },),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isExpanded = !isExpanded;
                            });
                          },
                          child: isExpanded
                              ? Icon(Icons.keyboard_arrow_up_sharp)
                              : Icon(Icons.keyboard_arrow_down_sharp),
                          // child: Image.asset('assets/downarrow.png',width: 10,height: 12,color: Color(0xff33302E),)
                        )
                      ],
                    ),
                    const SizedBox(height: 5),
                    if (isExpanded)
                      Text(
                          'Sportswear is no longer under culture, it is no longer indie or cobbled together as it once was. Sport is fashion today. The top is oversized in fit and style, may need to size down.'),
                          Divider(),
                          // SizedBox(height: 29,),
                    // Row(
                    //   children: [Text('Similar Product',style: GoogleFonts.ptSans(fontSize: 16),),
                    //   SizedBox(
                    //       width: 167,
                    //     ),
                    //     GestureDetector(
                    //       onTap: () {
                    //         setState(() {
                    //           isExpanded2 = !isExpanded2;
                    //         });
                    //       },
                    //       child: isExpanded2
                    //           ? Icon(Icons.keyboard_arrow_up_sharp)
                    //           : Icon(Icons.keyboard_arrow_down_sharp),
                    //       // child: Image.asset('assets/downarrow.png',width: 10,height: 12,color: Color(0xff33302E),)
                    //     ),
                        
                    //   ],
                    // ),
                    // Divider(),
                    
                  ],
                ),
              ),
              
              
            ),
          )
        ],
      ),
      bottomNavigationBar: GestureDetector(onTap: () {
       Provider.of<Productcontroller>(context, listen: false).onAddtocart(widget.product);
      },
        child: GestureDetector(onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen(),));
        },
          child: Container(width:double.infinity ,height: 77 ,
                          decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(24),topRight: Radius.circular(24),),color: Colors.black),
                         child: Row(mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Image.asset('assets/carticon.png',height: 15,width: 19,),
                             SizedBox(width:13 ,),
                             Text('Add To Cart',style: GoogleFonts.ptSans(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w700),)
                           ],
                         ), ),
        ),
      ),
      
      ),
    );
  }
}
