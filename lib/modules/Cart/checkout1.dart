import 'package:fashion_store/modules/Cart/checkout2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationScreen extends StatefulWidget {
 final VoidCallback onNext;
  const LocationScreen({super.key, required this.onNext});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
   bool isChecked = true;
  int selectedOption = 0;
  bool isSelected = false;
  int pageindex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 20,right: 20, ),
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12,top:29),
              child: Text(
                'STEP 1',
                style: GoogleFonts.ptSans(fontSize: 11),
              ),
            ),
            Text(
              ' Shipping',
              style: GoogleFonts.ptSans(fontSize: 25),
            ),
            SizedBox(
              height: 37,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'First name *',
                  labelStyle: GoogleFonts.ptSans(
                      color: Color(0xff777E90),
                      fontSize: 14,
                      fontWeight: FontWeight.w500)),
            ),
            SizedBox(height: 37),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Last name *',
                  labelStyle: GoogleFonts.ptSans(
                      color: Color(0xff777E90),
                      fontSize: 14,
                      fontWeight: FontWeight.w500)),
            ),
            SizedBox(height: 37),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Country *',
                  labelStyle: GoogleFonts.ptSans(
                      color: Color(0xff777E90),
                      fontSize: 14,
                      fontWeight: FontWeight.w500)),
            ),
            SizedBox(height: 37),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Street name *',
                  labelStyle: GoogleFonts.ptSans(
                      color: Color(0xff777E90),
                      fontSize: 14,
                      fontWeight: FontWeight.w500)),
            ),
            SizedBox(height: 37),
            TextField(
              decoration: InputDecoration(
                  labelText: 'City *',
                  labelStyle: GoogleFonts.ptSans(
                      color: Color(0xff777E90),
                      fontSize: 14,
                      fontWeight: FontWeight.w500)),
            ),
            SizedBox(height: 37),
            TextField(
              decoration: InputDecoration(
                  labelText: 'State / Province',
                  labelStyle: GoogleFonts.ptSans(
                      color: Color(0xff777E90),
                      fontSize: 14,
                      fontWeight: FontWeight.w500)),
            ),
            SizedBox(height: 37),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Zip-code *',
                  labelStyle: GoogleFonts.ptSans(
                      color: Color(0xff777E90),
                      fontSize: 14,
                      fontWeight: FontWeight.w500)),
            ),
            SizedBox(height: 37),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Phone number *',
                  labelStyle: GoogleFonts.ptSans(
                      color: Color(0xff777E90),
                      fontSize: 14,
                      fontWeight: FontWeight.w500)),
            ),
            SizedBox(height: 61),
            Text(
              'Shipping method',
              style: GoogleFonts.ptSans(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(8),
              color: selectedOption == 0 ? Color(0xffFDFDFD) : null,
              child: Row(
                children: [
                  Radio(
                    splashRadius: 20,
                    fillColor: MaterialStateProperty.all(Colors.green),
                    value: 0,
                    groupValue: selectedOption,
                    onChanged: (value) {
                      selectedOption = value!;

                      setState(() {});
                    },
                    activeColor: Colors.green,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('Free'),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Delivery to home'),
                        ],
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text('Delivery from 3 to 7 business days')
                      
                    ],
                  ),
                  
                ],
              ),
            ),
             Container(
              padding: EdgeInsets.all(8),
              color: selectedOption == 1 ? Color(0xffFDFDFD) : null,
              child: Row(
                children: [
                  Radio(
                    splashRadius: 20,
                    fillColor: MaterialStateProperty.all(Colors.green),
                    value: 1,
                    groupValue: selectedOption,
                    onChanged: (value) {
                      selectedOption = value!;

                      setState(() {});
                    },
                    activeColor: Colors.green,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('Free'),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Delivery to home'),
                        ],
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text('Delivery from 3 to 7 business days')
                      
                    ],
                  ),
                  
                ],
              ),
            ),
             Container(
              padding: EdgeInsets.all(8),
              color: selectedOption == 2 ? Color(0xffFDFDFD): null,
              child: Row(
                children: [
                  Radio(
                    splashRadius: 20,
                    fillColor: MaterialStateProperty.all(Colors.green),
                    value: 2,
                    groupValue: selectedOption,
                    onChanged: (value) {
                      selectedOption = value!;

                      setState(() {});
                    },
                    activeColor: Colors.green,
                  ),
                 
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('Free'),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Delivery to home'),
                        ],
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text('Delivery from 3 to 7 business days')
                      
                    ],
                  ),
                  
                ],
              ),
            ),
            SizedBox(
              height: 63,
            ),
            Text('Coupon Code'),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 55,
              width: 311,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    fillColor: Color(0xffF7F7F8)),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text('Billing Address'),
            SizedBox(
              height: 20,
            ),
            Row(children: [Checkbox(value: isChecked, onChanged: (value) {
              setState(() {
              isChecked = value!;
            });
            },),
            Text('Copy address data from shipping ')
            ],
            ),

            SizedBox(height: 62,),
            SizedBox(height:48 ,width:315 ,
              child: CupertinoButton(
                borderRadius: BorderRadius.circular(24),
                child: Text('Continue to payment',style: GoogleFonts.ptSans(fontSize: 16),),
                 onPressed: () {
                  widget.onNext();
                pageindex=1;
              },color: Colors.black,),
            ),
            SizedBox(height: 52,),
          ],
          
        ),
      ),
    );
  }
}
