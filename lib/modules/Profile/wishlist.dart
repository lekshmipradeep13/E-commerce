import 'package:fashion_store/modules/Product/Controller/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  int selectedindexbutton = 0;

  @override
  Widget build(BuildContext context) {
    return Consumer<Productcontroller>(
      builder: (context, value, child) => Scaffold(
          appBar: AppBar(
            leading: Image.asset(
              'assets/optionicon.png',scale: 4,
              
            ),
            title: Center(child: Text('My Wishlist')),
            actions: [
              Image.asset(
                'assets/bellicon.png',
                width: 26,
                height: 26,
              ),
            ],
          ),
          body: Container(
            width: 141,
            height: 253,
            child: Column(children: [
              Container(
                width: 141,
                height: 186,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
               image: DecorationImage(image: AssetImage('')) ),
              ),
              Text(''),
               Text(''),

            ]),
          )),
    );
  }
}
