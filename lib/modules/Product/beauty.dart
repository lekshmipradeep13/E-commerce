import 'package:flutter/cupertino.dart';

class BeautyScreen extends StatefulWidget {
  const BeautyScreen({super.key});

  @override
  State<BeautyScreen> createState() => _BeautyScreenState();
}

class _BeautyScreenState extends State<BeautyScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

  // Expanded(
  //           child: Container(
  //             // height: 500,
  //             padding: EdgeInsets.only(left: 21, top: 5),
  //             width: double.infinity,
  //             decoration: BoxDecoration(
  //                 borderRadius: BorderRadius.all(Radius.zero),
  //                 color: Colors.white),
  //             child: viewAll
  //                 ? GridView.builder(
  //                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  //                       childAspectRatio: .7,
  //                       crossAxisCount: 2,
  //                     ),
  //                     itemCount: 4,
  //                     itemBuilder: (context, index) {
  //                       return Padding(
  //                         padding: const EdgeInsets.all(8.0),
  //                         child: Container(
  //                           // height: 253,
  //                           // width: 141,
  //                           color: Colors.amber,
  //                           child: Column(
  //                             children: [
  //                               Container(
  //                                 width: 142,
  //                                 height: 212,
  //                                 decoration: BoxDecoration(
  //                                     borderRadius: BorderRadius.circular(10),
  //                                     image: DecorationImage(
  //                                         image: AssetImage(
  //                                             'assets/collection5.png'),
  //                                         fit: BoxFit.fill)),
  //                               )
  //                             ],
  //                           ),
  //                         ),
  //                       );
  //                     },
  //                   )
  //                 : Column(
  //                     children: List.generate(2, (index) {
  //                     return Column(
  //                       children: [
  //                         Row(
  //                           children: [
  //                             Padding(
  //                               padding: const EdgeInsets.only(top: 40),
  //                               child: Container(
  //                                 height: 250,
  //                                 width: 168,
  //                                 decoration: BoxDecoration(
  //                                     borderRadius: BorderRadius.circular(5),
  //                                     image: DecorationImage(
  //                                         image: AssetImage(
  //                                             'assets/collection1.png'))),
  //                               ),
  //                             ),
  //                             SizedBox(
  //                               width: 12,
  //                             ),
  //                             index == 1
  //                                 ? Column(
  //                                     children: [
  //                                       Container(
  //                                         height: 228,
  //                                         width: 154,
  //                                         decoration: BoxDecoration(
  //                                             borderRadius:
  //                                                 BorderRadius.circular(5),
  //                                             image: DecorationImage(
  //                                                 image: AssetImage(
  //                                                     'assets/collection2.png'))),
  //                                       ),
  //                                       SizedBox(
  //                                         height: 10,
  //                                       ),
  //                                       CupertinoButton(
  //                                         onPressed: () {
  //                                           Navigator.push(
  //                                               context,
  //                                               MaterialPageRoute(
  //                                                 builder: (context) =>
  //                                                     CollectionScreen2(),
  //                                               ));
  //                                         },
  //                                         child: GestureDetector(
  //                                           onTap: () {
  //                                             viewAll = !viewAll;
  //                                             setState(() {});
  //                                           },
  //                                           child: Container(
  //                                             height: 52,
  //                                             width: 154,
  //                                             decoration: BoxDecoration(
  //                                                 borderRadius:
  //                                                     BorderRadius.only(
  //                                                         topLeft:
  //                                                             Radius.circular(
  //                                                                 10),
  //                                                         bottomLeft:
  //                                                             Radius.circular(
  //                                                                 10)),
  //                                                 color: Colors.black),
  //                                             child: Center(
  //                                                 child: Text(
  //                                               'VIEW All',
  //                                               style: GoogleFonts.ptSans(
  //                                                   color: Colors.white),
  //                                             )),
  //                                           ),
  //                                         ),
  //                                       )
  //                                     ],
  //                                   )
  //                                 : Container(
  //                                     height: 228,
  //                                     width: 154,
  //                                     decoration: BoxDecoration(
  //                                         borderRadius:
  //                                             BorderRadius.circular(5),
  //                                         image: DecorationImage(
  //                                             image: AssetImage(
  //                                                 'assets/collection2.png'))),
  //                                   ),
  //                           ],
  //                         ),
  //                       ],
  //                     );
  //                   })),
  //           ),
  //         )
  //       ],
  //     ),