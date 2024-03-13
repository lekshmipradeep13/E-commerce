import 'dart:developer';

import 'package:fashion_store/modules/Product/Model/model.dart';
import 'package:fashion_store/modules/Product/accessories.dart';
import 'package:fashion_store/modules/Product/beauty.dart';
import 'package:fashion_store/modules/Product/men_Screen.dart';
import 'package:fashion_store/modules/Product/notification.dart';
import 'package:fashion_store/modules/Product/women_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  String nameAdtre="kjhj";
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                    child: Text(
                  'GemStore',
                  style: GoogleFonts.ptSans(
                      fontWeight: FontWeight.w700, fontSize: 20),
                )),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NotificationScreen(),
                        ));
                  },
                  child: Image.asset(
                    'assets/bellicon.png',
                    width: 26,
                    height: 26,
                  ),
                ),
              ],
            ),
          ),
          drawer: Container(
            height: MediaQuery.of(context).size.height,
            child: DrawerWidget(),
          ),
          body: Column(children: [
            SizedBox(height: 42),
            TabBar(
              tabs: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      foregroundColor: Color(0xff3A2C27),
                      child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.black,
                          child: Image.asset('assets/femaleicon.png',
                              height: 20, width: 13, color: Color(0xffFFFFFF))),
                    ),
                    Text('Women',
                        style: GoogleFonts.ptSans(
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                            color: Color(0xff9D9D9D)))
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                        radius: 20,
                        backgroundColor: Color(0xffF3F3F3),
                        child: Image.asset('assets/male icon.png',
                            height: 20, width: 17, color: Color(0xff9D9D9D))),
                    SizedBox(height: 9),
                    Text('Men',
                        style: GoogleFonts.ptSans(
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                            color: Color(0xff9D9D9D)))
                  ],
                ),
                GestureDetector(onTap: () {
                  setState(() {
                      index=0;
                  });
                

                },
                  child: Column(
                    children: [
                      CircleAvatar(
                          radius: 20,
                   backgroundColor: index==0?Colors.white:Colors.black,
                          child: Image.asset('assets/accessories.png',
                              height: 14, width: 20, color: Color(0xff9D9D9D))),
                      SizedBox(height: 9),
                      Text(
                        'Accessories',
                        style: GoogleFonts.ptSans(
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                            color: Color(0xff9D9D9D)),
                      )
                    ],
                  ),
                ),
                GestureDetector(onTap: () {
                  setState(() {
                      index=0;
                  });
                

                },
                  child: Column(
                    children: [
                      CircleAvatar(
                          radius: 20,
                          backgroundColor: index==0?Colors.white:Colors.black,
                          child: Image.asset(
                            'assets/beautyicon.png',
                            height: 24,
                            width: 24,
                            color: Color(0xff9D9D9D),
                          )),
                      SizedBox(height: 9),
                      Text('Beauty',
                          style: GoogleFonts.ptSans(
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                              color: Color(0xff9D9D9D)))
                    ],
                  ),
                )
              ],
            ),
            Expanded(
              child: SizedBox(
                child: TabBarView(children: [
                  WomenScreen(),
                  MenScreen(),
                  AccessoriesScreen(),
                  BeautyScreen(),
                ]),
              ),
            ),
          ]),
        ));
  }
}

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  int Selectedindex = 1;
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 68, left: 52),
          child: Row(
            children: [
              Image.asset(
                'assets/profileimg.png',
                width: 52,
                height: 52,
              ),
              SizedBox(
                width: 17,
              ),
              Column(
                children: [
                  Text(
                    'Sunie Pham',
                    style: GoogleFonts.ptSans(
                        fontWeight: FontWeight.w700, fontSize: 16),
                  ),
                  Text(
                    'sunieux@gmail.com',
                    style: GoogleFonts.ptSans(
                        fontWeight: FontWeight.w500, fontSize: 12),
                  )
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: ListView(
            children: List.generate(drawer.length, (index) {
              return drawer[index].id > 4
                  ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal:13 ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          drawer[index].id == 5
                              ? const Text('Others',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)
                              : const SizedBox(),
                          CupertinoButton(
                            onPressed: () {
                              setState(() {
                                Selectedindex = drawer[index].id;
                              });
                            },
                            child: Container(
                                height: 55,
                                width: 267,
                                color: Selectedindex == drawer[index].id
                                    ? Colors.grey
                                    : null,
                                child: Row(
                                  children: [
                                    Image.asset(
                                      drawer[index].icon,
                                      width: 16,
                                      height: 17,color: Selectedindex == drawer[index].id?Colors.black:Colors.grey
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      drawer[index].title,
                                      style: GoogleFonts.ptSans(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: Selectedindex == drawer[index].id?Colors.black:Colors.grey),
                                    )
                                  ],
                                )),
                          ),
                        ],
                      ),
                  )
                  : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 13),
                    child: Column(
                      children: [
                        CupertinoButton(
                            onPressed: () {
                              log('is printing ${drawer[index].title}');
                              setState(() {
                                Selectedindex = drawer[index].id;
                              });
                            },
                            child: Container(
                                height: 55,
                                width: 267,
                                color: Selectedindex == drawer[index].id
                                    ? Colors.grey
                                    : null,
                                child: Row(
                                  children: [
                                    Image.asset(
                                      drawer[index].icon,
                                      width: 16,
                                      height: 17,color: Selectedindex == drawer[index].id?Colors.black:Colors.grey
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      drawer[index].title,
                                      style: GoogleFonts.ptSans(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,color: Selectedindex == drawer[index].id?Colors.black:Colors.grey
                                      ),
                                    )
                                  ],
                                )),
                          ),
                      ],
                    ),
                  );
            }),
          ),
        ),
      ],
    )
        //  Column(children: [
        // Padding(
        //   padding: const EdgeInsets.only(top: 68,left: 52),
        //   child: Row(children: [
        //     Image.asset('assets/profileimg.png',width: 52,height: 52,),
        //     SizedBox(width: 17,),
        //     Column(children: [Text('Sunie Pham',style: GoogleFonts.ptSans(fontWeight: FontWeight.w700,fontSize: 16),),
        //     Text('sunieux@gmail.com',style: GoogleFonts.ptSans(fontWeight: FontWeight.w500,fontSize: 12),)
        //     ],)
        //   ],),
        // ),
        //   SizedBox(height: 71,),
        // Container(height:55 ,width:267 ,
        // child: Row(children: [
        //   Image.asset('assets/Home.png',width: 16,height: 17,),
        //   SizedBox(width: 20,),
        //   Text('Homepage',style: GoogleFonts.ptSans(fontSize: 16,fontWeight: FontWeight.w700),)
        // ],),),
        //   Container(height:55 ,width:267 ,
        //   child: Row(children: [
        //     Icon(Icons.search),
        //     SizedBox(width: 20,),
        //     Text('Discover',style: GoogleFonts.ptSans(fontSize: 16,fontWeight: FontWeight.w700),)
        //   ],),),
        //    Container(height:55 ,width:267 ,
        //   child: Row(children: [
        //     Image.asset('assets/carticon.png',width: 16,height: 17,),
        //     SizedBox(width: 20,),
        //     Text('My Order',style: GoogleFonts.ptSans(fontSize: 16,fontWeight: FontWeight.w700),)
        //   ],),),
        //    Container(height:55 ,width:267 ,
        //   child: Row(children: [
        //     Image.asset('assets/Profileicon.png',width: 16,height: 17,),
        //     SizedBox(width: 20,),
        //     Text('My profile',style: GoogleFonts.ptSans(fontSize: 16,fontWeight: FontWeight.w700),)
        //   ],),),
        //   Text('OTHER',style: GoogleFonts.ptSans(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xff777E90))),
        //    Container(height:55 ,width:267 ,
        //   child: Row(children: [
        //     Image.asset('assets/settings.png',width: 16,height: 17,),
        //     SizedBox(width: 20,),
        //     Text('Setting',style: GoogleFonts.ptSans(fontSize: 16,fontWeight: FontWeight.w700),)
        //   ],),),
        //   Container(height:55 ,width:267 ,
        //   child: Row(children: [
        //     Image.asset('assets/support.png',width: 16,height: 17,),
        //     SizedBox(width: 20,),
        //     Text('Support',style: GoogleFonts.ptSans(fontSize: 16,fontWeight: FontWeight.w700),)
        //   ],),),Container(height:55 ,width:267 ,
        //   child: Row(children: [
        //     Image.asset('assets/policyicon.png',width: 16,height: 17,),
        //     SizedBox(width: 20,),
        //     Text('About us',style: GoogleFonts.ptSans(fontSize: 16,fontWeight: FontWeight.w700),)
        //   ],),)

        // ],),
        );
  }
}
