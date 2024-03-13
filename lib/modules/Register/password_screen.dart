import 'package:fashion_store/modules/Product/bottombar.dart';
import 'package:fashion_store/modules/Product/home_screen.dart';
import 'package:fashion_store/modules/Register/controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PasswordSCreen extends StatefulWidget {
  const PasswordSCreen({super.key});

  @override
  State<PasswordSCreen> createState() => _PasswordSCreenState();
}

class _PasswordSCreenState extends State<PasswordSCreen> {
  TextEditingController passwordTc = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child:
                  Image.asset('assets/back arrow.png', height: 32, width: 32)),
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.only(left: 33, right: 33, top: 58),
                child: Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Text(
                        'Create new password ',
                        style: GoogleFonts.ptSans(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 24),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Your new password must be different from previously used password',
                        style: GoogleFonts.ptSans(fontSize: 14),
                      ),
                      SizedBox(height: 59),
                      Consumer<PasswordCntrl>(
                          builder: (context, controller, _) {
                        return TextFormField(
                          controller: passwordTc,
                          obscureText: controller.isvisibility,
                          onChanged: (value) {
                            controller.passwordFormat(value);
                            // Provider.of<PasswordCntrl>(context, listen: false)
                            //     .CheckPassword(password: value);
                          },
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle:
                                  GoogleFonts.ptSans(color: Colors.grey),
                              errorText: controller.errorText,
                              suffixIcon: GestureDetector(
                                  onTap: () {
                                    controller.passwordVisibility();
                                  },
                                  child: controller.isvisibility
                                      ? Icon(
                                          Icons.visibility_off,
                                          color: Colors.grey,
                                        )
                                      : Icon(
                                          Icons.visibility,
                                          color: Colors.grey,
                                        ))),
                        );
                      }),
                      SizedBox(height: 20),
                      Consumer<PasswordCntrl>(
                        builder: (context, cntrl, child) => TextFormField(
                          textAlign: TextAlign.center,
                          onChanged: (value) {
                            cntrl.isConformedPassword(passwordTc.text, value);
                          },
                          decoration: InputDecoration(
                              errorText: cntrl.errorText2,
                              labelText: 'Confirm Password',
                              labelStyle:
                                  GoogleFonts.ptSans(color: Colors.grey),
                              suffixIcon: GestureDetector(
                                  onTap: () {
                                    cntrl.passwordVisibility();
                                  },
                                  child: Icon(Icons.visibility))),
                        ),
                      ),
                      SizedBox(height: 107),
                      Consumer<PasswordCntrl>(
                        builder: (context, value, child) => Center(
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: value.Isconfirmbutton
                                      ? MaterialStatePropertyAll(Colors.grey)
                                      : MaterialStatePropertyAll(Colors.black)),
                              onPressed: () {
                                showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return Container(
                                        width: 375,
                                        height: 361,
                                        child: Column(
                                          children: [
                                            SizedBox(height: 35),
                                            Image.asset(
                                              'assets/bottomsheet icon.png',
                                              width: 46,
                                              height: 57,
                                            ),
                                            Text(
                                              'Your password has been changed',
                                              style: GoogleFonts.ptSans(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 17),
                                            ),
                                            SizedBox(height: 15),
                                            Text(
                                              'Welcome back! Discover now!',
                                              style: GoogleFonts.ptSans(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12),
                                            ),
                                            SizedBox(height: 20),
                                            GestureDetector(
                                              onTap: () {
                                                Navigator.pushReplacement(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          BottomScreen(),
                                                    ));
                                              },
                                              child: Container(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 19,
                                                    horizontal: 102),
                                                height: 60,
                                                width: 315,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                    color: Colors.black),
                                                child: Text(
                                                  'Browse home',
                                                  style: GoogleFonts.ptSans(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            )
                                          ],
                                        ));
                                  },
                                );
                              },
                              child: Text(
                                'confirm',
                                style: GoogleFonts.ptSans(color: Colors.white),
                              )),
                        ),
                      )
                    ])))));
  }
}
