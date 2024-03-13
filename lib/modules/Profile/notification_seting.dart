import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class NotificationSettingSCreen extends StatefulWidget {
  const NotificationSettingSCreen({super.key});

  @override
  State<NotificationSettingSCreen> createState() => _NotificationSCreenState();
}

class _NotificationSCreenState extends State<NotificationSettingSCreen> {
  bool notificationOn =false;
  bool notificatinSound=false;
  bool lockScreennotification=false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          'assets/back arrow.png',
          scale: 4,
        ),
        title: Center(
          child: Text(
            'Notification',
            style: GoogleFonts.ptSans(
                fontSize: 20,
                
                color: Color(0xff121420),
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 45),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text('Show notifications',
                      style:
                          GoogleFonts.ptSans(fontSize: 14,fontWeight: FontWeight.w500, color: Colors.black)),
                          SizedBox(height: 6),
                          Text('Receive push notifications for new messages',style:
                          GoogleFonts.ptSans(fontSize: 10,fontWeight: FontWeight.w300))
                ]),
                SizedBox(width: 36,),
      Switch(value:notificationOn , onChanged: (value) {


        setState(() {
          notificationOn = value;
        });
        
      },
      
      //activeColor: Color.fromARGB(255, 9, 91, 12),
activeTrackColor:HexColor('#508A7B'),inactiveThumbColor: Colors.amber,
trackOutlineColor:  MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
    if (states.contains(MaterialState.disabled)) {
      return Colors.orange.withOpacity(.48);
    }
    return Colors.white; // Use the default color.
  }),

      thumbColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
    if (states.contains(MaterialState.disabled)) {
      return Colors.orange;
    }
    return Colors.white;
  }), 
      
      
      )
              ],
            ),
            SizedBox(height: 37),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text('Notification sounds',
                      style:
                          GoogleFonts.ptSans(fontSize: 14,fontWeight: FontWeight.w500, color: Colors.black)),
                          SizedBox(height: 6),
                          Text('Play sound for new messages',style:
                          GoogleFonts.ptSans(fontSize: 10,fontWeight: FontWeight.w300))
                ]),
                SizedBox(width: 36,),
      Switch(value:notificatinSound , onChanged: (value) {


        setState(() {
          notificatinSound = value;
        });
        
      },
      
      //activeColor: Color.fromARGB(255, 9, 91, 12),
activeTrackColor:HexColor('#508A7B'),inactiveThumbColor: Colors.amber,
trackOutlineColor:  MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
    if (states.contains(MaterialState.disabled)) {
      return Colors.orange.withOpacity(.48);
    }
    return Colors.white; // Use the default color.
  }),

      thumbColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
    if (states.contains(MaterialState.disabled)) {
      return Colors.orange;
    }
    return Colors.white;
  }), 
      
      
      )
              ],
            ),
            SizedBox(height: 37),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text('Lock screen notifications',
                      style:
                          GoogleFonts.ptSans(fontSize: 14,fontWeight: FontWeight.w500, color: Colors.black)),
                          SizedBox(height: 6),
                          Text('Allow notification on the lock screen',style:
                          GoogleFonts.ptSans(fontSize: 10,fontWeight: FontWeight.w300))
                ]),
                SizedBox(width: 36,),
      Switch(value:lockScreennotification , onChanged: (value) {


        setState(() {
          lockScreennotification = value;
        });
        
      },
      
      //activeColor: Color.fromARGB(255, 9, 91, 12),
activeTrackColor:HexColor('#508A7B'),inactiveThumbColor: Colors.amber,
trackOutlineColor:  MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
    if (states.contains(MaterialState.disabled)) {
      return Colors.orange.withOpacity(.48);
    }
    return Colors.white; // Use the default color.
  }),

      thumbColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
    if (states.contains(MaterialState.disabled)) {
      return Colors.orange;
    }
    return Colors.white;
  }), 
      
      
      )
              ],
            )
          ],
        ),
      ),
    );
  }
}
