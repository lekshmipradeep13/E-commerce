import 'package:fashion_store/modules/Cart/cart_screen.dart';

import 'package:fashion_store/modules/Product/home_screen.dart';
import 'package:fashion_store/modules/Product/search_screen.dart';
import 'package:fashion_store/modules/Profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomScreen extends StatefulWidget {
  const BottomScreen({super.key});

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
   List pages=const[
    HomeScreen(),
    SearchScreen(),
    CartScreen(),
    ProfileScreen()];
    int index=0;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      bottomNavigationBar:
            BottomNavigationBar(currentIndex: index,onTap: (value) {
              setState(() {
                index=value;
              });
            },
              backgroundColor: Colors.white, items: const [
                 BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.black),
           label: "Home",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,color:Color(0xffE6E8EC)),
            label: "search",
           
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: SizedBox(height:23 ,width: 19,
              child: Image(image: AssetImage('assets/carticon.png'))),
            label: "Cart",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: SizedBox(height:23 ,width: 19,
              child: Image(image: AssetImage('assets/Profileicon.png'))),
            label: "Profile",
        
          ),
        ]),
 drawer:     index==0 || index==2?
  SizedBox(height: MediaQuery.of(context).size.height,
            child: Drawer(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 68,left: 52),
                child: Row(children: [
                  Image.asset('assets/profileimg.png',width: 52,height: 52,),
                 const SizedBox(width: 17,),
                  Column(children: [Text('Sunie Pham',style: GoogleFonts.ptSans(fontWeight: FontWeight.w700,fontSize: 16),),
                  Text('sunieux@gmail.com',style: GoogleFonts.ptSans(fontWeight: FontWeight.w500,fontSize: 12),)
                  ],)
                ],),
              ),
            const  SizedBox(height: 71,),
              SizedBox(height:55 ,width:267 ,
              child: Row(children: [
                Image.asset('assets/Home.png',width: 16,height: 17,),
              const  SizedBox(width: 20,),
                Text('Homepage',style: GoogleFonts.ptSans(fontSize: 16,fontWeight: FontWeight.w700),)
              ],),),
              SizedBox(height:55 ,width:267 ,
              child: Row(children: [
              const  Icon(Icons.search),
              const  SizedBox(width: 20,),
                Text('Discover',style: GoogleFonts.ptSans(fontSize: 16,fontWeight: FontWeight.w700),)
              ],),),
               SizedBox(height:55 ,width:267 ,
              child: Row(children: [
                Image.asset('assets/carticon.png',width: 16,height: 17,),
              const  SizedBox(width: 20,),
                Text('My Order',style: GoogleFonts.ptSans(fontSize: 16,fontWeight: FontWeight.w700),)
              ],),),
               SizedBox(height:55 ,width:267 ,
              child: Row(children: [
                Image.asset('assets/Profileicon.png',width: 16,height: 17,),
              const  SizedBox(width: 20,),
                Text('My profile',style: GoogleFonts.ptSans(fontSize: 16,fontWeight: FontWeight.w700),)
              ],),),
              Text('OTHER',style: GoogleFonts.ptSans(fontSize: 14,fontWeight: FontWeight.w500,color:const Color(0xff777E90))),
               SizedBox(height:55 ,width:267 ,
              child: Row(children: [
                Image.asset('assets/settings.png',width: 16,height: 17,),
               const SizedBox(width: 20,),
                Text('Setting',style: GoogleFonts.ptSans(fontSize: 16,fontWeight: FontWeight.w700),)
              ],),),
              SizedBox(height:55 ,width:267 ,
              child: Row(children: [
                Image.asset('assets/support.png',width: 16,height: 17,),
               const SizedBox(width: 20,),
                Text('Support',style: GoogleFonts.ptSans(fontSize: 16,fontWeight: FontWeight.w700),)
              ],),),SizedBox(height:55 ,width:267 ,
              child: Row(children: [
                Image.asset('assets/policyicon.png',width: 16,height: 17,),
               const SizedBox(width: 20,),
                Text('About us',style: GoogleFonts.ptSans(fontSize: 16,fontWeight: FontWeight.w700),)
              ],),)
              
            ],),
            ),
          )
  :null,
body: pages.elementAt(index),
         
    );
  }
}