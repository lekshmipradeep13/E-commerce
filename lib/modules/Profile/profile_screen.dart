import 'package:fashion_store/modules/Profile/address.dart';
import 'package:fashion_store/modules/Profile/voucher.dart';
import 'package:fashion_store/modules/Profile/wishlist.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 39, right: 35, top: 61),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assets/profileimg.png'),
                      ),
                      Column(
                        children: [
                          Text(
                            'Sunie Pham',
                            style: GoogleFonts.ptSans(
                                fontSize: 16, color: Colors.black),
                          ),
                          Text(
                            'sunieux@gmail.com',
                            style: GoogleFonts.ptSans(
                                fontSize: 12, color: Colors.black),
                          ),
                        ],
                      ),
                      Icon(Icons.settings)
                    ],
                  ),
                ),
                SizedBox(height: 58),
                Container(
                  width: 327,
                  height: 440,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),color: Colors.white,
                      boxShadow: [BoxShadow()]),
                      child:Column(children: [
                        ListTile(
                leading: Image.asset(
                  'assets/Location.png',
                  height: 24,
                  width: 24,
                ),
                title: Text(
                  'Address',
                  style:
                      GoogleFonts.ptSans(fontSize: 14, color: Color(0xff33302E)),
                ),
                trailing: GestureDetector(onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) =>AddressScreen() ,));
                },
                  child: Image.asset(
                    'assets/Arrow - Right 2.png',
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
              Divider(color: Color(0xffF3F3F6),),
                      ListTile(
                leading: Image.asset(
                  'assets/payment.png',
                  height: 24,
                  width: 24,
                ),
                title: Text(
                  'Payment method',
                  style:
                      GoogleFonts.ptSans(fontSize: 14, color: Color(0xff33302E)),
                ),
                trailing: Image.asset(
                  'assets/Arrow - Right 2.png',
                  height: 20,
                  width: 20,
                ),
              ),
              Divider(color: Color(0xffF3F3F6),),
                    ListTile(
                leading: Image.asset(
                  'assets/voucher.png',
                  height: 24,
                  width: 24,
                ),
                title: Text(
                  'Voucher',
                  style:
                      GoogleFonts.ptSans(fontSize: 14, color: Color(0xff33302E)),
                ),
                trailing: GestureDetector(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => VoucherScreen(),));
                },
                  child: Image.asset(
                    'assets/Arrow - Right 2.png',
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
              Divider(color: Color(0xffF3F3F6),),
                   ListTile(
                leading: Image.asset(
                  'assets/favourite.png',
                  height: 24,
                  width: 24,
                ),
                title: Text(
                  'My Wishlist',
                  style:
                      GoogleFonts.ptSans(fontSize: 14, color: Color(0xff33302E)),
                ),
                trailing: GestureDetector(onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WishlistScreen(),));
                },
                  child: Image.asset(
                    'assets/Arrow - Right 2.png',
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
              Divider(color: Color(0xffF3F3F6),),
                 ListTile(
                leading: Image.asset(
                  'assets/rate.png',
                  height: 24,
                  width: 24,
                ),
                title: Text(
                  'Rate this app',
                  style:
                      GoogleFonts.ptSans(fontSize: 14, color: Color(0xff33302E)),
                ),
                trailing: Image.asset(
                  'assets/Arrow - Right 2.png',
                  height: 20,
                  width: 20,
                ),
              ),
             
               Divider(color: Color(0xffF3F3F6),),
                 GestureDetector(
                  onTap: () {
                    FirebaseAuth.instance.signOut();
                  },
                   child: ListTile(
                                   leading: Image.asset(
                    'assets/Logout.png',
                    height: 24,
                    width: 24,
                                   ),
                                   title: Text(
                    'Log out',
                    style:
                        GoogleFonts.ptSans(fontSize: 14, color: Color(0xff33302E)),
                                   ),
                                   trailing: Image.asset(
                    'assets/Arrow - Right 2.png',
                    height: 20,
                    width: 20,
                                   ),
                                 ),
                 ),
              Divider(color: Color(0xffF3F3F6),),
                      ],) ,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
