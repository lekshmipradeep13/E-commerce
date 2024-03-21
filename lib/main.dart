import 'package:fashion_store/modules/Cart/cart_screen.dart';
import 'package:fashion_store/modules/Cart/checkout.dart';
import 'package:fashion_store/modules/Cart/checkout1.dart';
import 'package:fashion_store/modules/Ongoing_Page/Controller/landing_pagecntrl.dart';
import 'package:fashion_store/modules/Ongoing_Page/onboarding.dart';
import 'package:fashion_store/modules/Ongoing_Page/ongoing_screen.dart';
import 'package:fashion_store/modules/Order/order_info.dart';
import 'package:fashion_store/modules/Product/Controller/home_controller.dart';
import 'package:fashion_store/modules/Product/bottombar.dart';
import 'package:fashion_store/modules/Product/collection_page1.dart';
import 'package:fashion_store/modules/Product/collectionpage_2.dart';
import 'package:fashion_store/modules/Product/home_screen.dart';
import 'package:fashion_store/modules/Product/product_Details.dart';
import 'package:fashion_store/modules/Product/women_Screen.dart';
import 'package:fashion_store/modules/Profile/notification_seting.dart';
import 'package:fashion_store/modules/Profile/payment_screen.dart';
import 'package:fashion_store/modules/Profile/product_rating.dart';
import 'package:fashion_store/modules/Profile/profile_screen.dart';
import 'package:fashion_store/modules/Profile/profile_setting.dart';
import 'package:fashion_store/modules/Profile/settings_screen.dart';
import 'package:fashion_store/modules/Profile/voucher.dart';
import 'package:fashion_store/modules/Profile/wishlist.dart';
import 'package:fashion_store/modules/Register/Controller/controller.dart';
import 'package:fashion_store/modules/Register/Controller/login_controller.dart';
import 'package:fashion_store/modules/Register/Controller/registration_cntrl.dart';
import 'package:fashion_store/modules/Register/password_screen.dart';

import 'package:fashion_store/modules/Register/verification_Code.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:provider/provider.dart';

void main() async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyA_jTUlwVcgM0f4OJW-Al08E38u8JbreZw",
          appId: "1:1069341183203:android:bca098891eb047318f49d6",
          messagingSenderId: "1069341183203",
          projectId: "gemstore-18325"));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LandingCntrl(),
        ),
        ChangeNotifierProvider(
          create: (context) => PasswordCntrl(),
        ),
        ChangeNotifierProvider(
          create: (context) => Productcontroller(),
        ),
      ],
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => RegistrationController(),
          ),
          ChangeNotifierProvider(
            create: (context) => LoginController(),
          )
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: StreamBuilder(
              stream: FirebaseAuth.instance.authStateChanges(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                }
                if (snapshot.hasData) {
                  return BottomScreen();
                }
                final box = GetStorage();
                final data = box.read<bool>('add');
                if (data == true) {
                  return BottomScreen();
                }
                return OnboardingScreen();
              }),
        ),
      ),
    );
  }
}
