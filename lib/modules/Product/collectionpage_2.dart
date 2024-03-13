// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class CollectionScreen2 extends StatefulWidget {
//   const CollectionScreen2({Key? key}) : super(key: key);

//   @override
//   _CollectionScreen2State createState() => _CollectionScreen2State();
// }

// class _CollectionScreen2State extends State<CollectionScreen2> {
//   bool viewAll = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             height: double.infinity,
//             width: double.infinity,
//           ),
//           Positioned(
//             top: 0,
//             child: Container(
//               width: double.infinity,
//               height: 247,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//                 image: DecorationImage(
//                   image: AssetImage('assets/homeimg1.png'),
//                   fit: BoxFit.fill,
//                 ),
//               ),
//               child: Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(
//                       left: 240,
//                       right: 4,
//                       top: 15,
//                       bottom: 49,
//                     ),
//                     child: Text(
//                       'Autumn\nCollection\n2021',
//                       style: GoogleFonts.ptSans(
//                         fontWeight: FontWeight.w500,
//                         fontSize: 22,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 50,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Positioned(
//             top: 216,
//             child: Container(
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(30),
//                   topRight: Radius.circular(30),
//                 ),
//                 color: Colors.white,
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.only(
//                   top: 24,
//                   bottom: 24,
//                 ),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: ImageColumn(images: ['assets/collection1.png', 'assets/collection1.png']),
//                     ),
//                     SizedBox(width: 12),
//                     Expanded(
//                       child: ImageColumn(images: ['assets/collection1.png', 'assets/collection1.png']),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ImageColumn extends StatelessWidget {
//   final List<String> images;

//   const ImageColumn({Key? key, required this.images}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: images.map((image) => Padding(
//         padding: const EdgeInsets.only(top: 24),
//         child: Container(
//           width: 168,
//           height: 250,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(5),
//           ),
//           child: Image.asset(image),
//         ),
//       )).toList(),
// );}
// }