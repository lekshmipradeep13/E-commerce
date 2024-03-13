import 'package:fashion_store/modules/Cart/checkout.dart';
import 'package:fashion_store/modules/Product/Controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Productcontroller>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(
                context,
              );
            },
            child: Image.asset(
              'assets/back arrow.png',
              height: 32,
              width: 32,
            ),
          ),
          titleSpacing: 70,
          title: Text(
            'Your Cart',
            style: GoogleFonts.ptSans(fontSize: 18, color: Color(0xff1D1F22)),
          ),
        ),
        body: value.cartlist.isEmpty
            ? Center(child: Text("Empty"))
            : Container(
                height: double.infinity,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: value.cartlist.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 310,
                      height: 99,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(children: [
                        Image.asset(
                          value.cartlist[index].imageUrl,
                          width: 97,
                          height: 141,
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Column(
                          children: [
                            Text(value.cartlist[index].productname),
                          ],
                        )
                      ]),
                    );
                  },
                ),
              ),
        bottomNavigationBar: GestureDetector(
          onTap: () {
            //  Provider.of<Productcontroller>(context, listen: false).onAddtocart('');
          },
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CartScreen(),
                  ));
            },
            child: Container(
              padding: EdgeInsets.only(top: 14, left: 33, right: 36),
              width: double.infinity,
              height: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                  color: Colors.white),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Product price'),
                      Text('\$110'),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Divider(),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Shipping'),
                      Text('Free Shipping'),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Divider(),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Subtotal'),
                      Text('\$110'),
                    ],
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  GestureDetector(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>CheckOutScreen1() ,));
                  },
                    child: Container(
                      width: 315,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: Colors.black),
                      child: Center(
                        child: Text(
                          'Proceed to checkout',
                          
                          style: GoogleFonts.ptSans(fontSize: 14,color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
