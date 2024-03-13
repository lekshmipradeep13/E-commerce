import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset('assets/back arrow.png', height: 32, width: 32)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 24,left: 32,right: 32),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  height: 46,
                  width: 246,
                  child: TextField(
                    autofocus: true,
                    decoration: InputDecoration(
                     prefixIcon: Icon(Icons.search),
                     labelText: 'Search',
                      fillColor: Color(0xffFAFAFA),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 14),
                Container(
                  width: 59,
                  height: 49,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xffFAFAFA)),
                      child: Image.asset('assets/filter_icon.png',width: 27,height: 27,),
                )
              ],
            ),
            SizedBox(height:28 ),
            Row(
              children: [
                Text('Recent Searches'),
                Icon(Icons.delete,color: Color(0xff),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
