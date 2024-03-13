import 'package:fashion_store/modules/Profile/notification_seting.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          'assets/optionicon.png',
          scale: 4,
        ),
        title: Center(
          child: Text(
            'setting',
            style: GoogleFonts.ptSans(
                fontSize: 20,
                color: Color(0xff121420),
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 28, right: 31, top: 63),
        child: Column(
          children: [
            ListTile(
              leading: Image.asset(
                'assets/language.png',
                height: 24,
                width: 24,
              ),
              title: Text(
                'Languages',
                style:
                    GoogleFonts.ptSans(fontSize: 14, color: Color(0xff33302E)),
              ),
              trailing: Image.asset(
                'assets/Arrow - Right 2.png',
                height: 20,
                width: 20,
              ),
            ),
            Divider(),
            ListTile(
                leading: Image.asset('assets/notificationicon.png',
                    height: 24, width: 24),
                title: Text(
                  'Notifications',
                  style: GoogleFonts.ptSans(
                      fontSize: 14, color: Color(0xff33302E)),
                ),
                trailing: GestureDetector(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>NotificationSettingSCreen() ,));
                },
                  child: Image.asset(
                    'assets/Arrow - Right 2.png',
                    height: 20,
                    width: 20,
                  ),
                )),
            Divider(),
            ListTile(
                leading: Image.asset(
                  'assets/T&cicon.png',
                  height: 24,
                  width: 24,
                ),
                title: Text(
                  'Terms of use',
                  style: GoogleFonts.ptSans(
                      fontSize: 14, color: Color(0xff33302E)),
                ),
                trailing: Image.asset(
                  'assets/Arrow - Right 2.png',
                  height: 20,
                  width: 20,
                )),
            Divider(),
            ListTile(
                leading: Image.asset(
                  'assets/policyicon.png',
                  height: 24,
                  width: 24,
                ),
                title: Text(
                  'Privacy Policy',
                  style: GoogleFonts.ptSans(
                      fontSize: 14, color: Color(0xff33302E)),
                ),
                trailing: Image.asset(
                  'assets/Arrow - Right 2.png',
                  height: 20,
                  width: 20,
                )),
            Divider(),
            ListTile(
                leading:
                    Image.asset('assets/chaticon.png', height: 24, width: 24),
                title: Text(
                  ' Chat Support',
                  style: GoogleFonts.ptSans(
                      fontSize: 14, color: Color(0xff33302E)),
                ),
                trailing: Image.asset(
                  'assets/Arrow - Right 2.png',
                  height: 20,
                  width: 20,
                )),
          ],
        ),
      ),
    );
  }
}
