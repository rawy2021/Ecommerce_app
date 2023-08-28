// // ignore_for_file: non_constant_identifier_names

// import 'package:ecommerce/logic/controller/product_controller.dart';
// import 'package:ecommerce/utils/constant/color.dart';
// import 'package:ecommerce/view/widget/text_utils.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// // import 'package:get_storage/get_storage.dart';

// class CardItem extends StatelessWidget {
//   CardItem({super.key});
//   final controller = Get.find<ProductController>();

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: GridView.builder(
//           itemCount: 20,
//           gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
//             maxCrossAxisExtent: 250,
//             childAspectRatio: 0.8,
//             crossAxisSpacing: 6,
//             mainAxisSpacing: 9,

//             //mainAxisExtent: 2
//           ),
//           itemBuilder: (context, index) {
//             return BuilCardItem(
//                 // image: controller.prudctsList[index].image!,
//                 // price: controller.prudctsList[index].price!,
//                 // rate: controller.prudctsList[index].rating!.rate!,
//                 );
//           }),
//     );

//     // Obx(() {
//     //   if (controller.isLoading.value) {
//     //     return Center(
//     //       child: CircularProgressIndicator(
//     //         color: Get.isDarkMode ? whiteClr : mainColor,
//     //       ),
//     //     );
//     //   } else {
//     //     return
//     //   }
//     // });
//   }

//   Widget BuilCardItem(
//       //   {
//       //   required String image,
//       //   required double price,
//       //   required double rate,
//       // }
//       ) {
//     return Padding(
//       padding: const EdgeInsets.all(10),
//       child: Container(
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(15),
//             color: Get.isDarkMode ? whiteClr : Colors.grey.withOpacity(0.1),
//             boxShadow: const [
//               BoxShadow(color: offWhite, spreadRadius: 4.0, blurRadius: 5.0)
//             ]),
//         child: Column(
//           children: [
//             Obx(() {
//               return SizedBox(
//                 //height: 20,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     //  controller.isFavoraite.value
//                     IconButton(
//                         onPressed: () {
//                           // controller.isFavoraite(prodctIs);
//                         },

//                         //  icon: controller.isFavoraite.value?
//                         icon: Icon(
//                           Icons.favorite,
//                           color: Colors.red,
//                         )),

//                     IconButton(
//                       onPressed: () {},
//                       icon: const Icon(
//                         Icons.add,
//                         color: darkGreyClr,
//                       ),
//                     ),
//                   ],
//                 ),
//               );
//             }),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 10.0),
//               child: Container(
//                 width: double.infinity,
//                 height: 150,
//                 decoration: BoxDecoration(
//                   // color: whiteClr,
//                   borderRadius: BorderRadius.circular(50),
//                 ),
//                 child: Image.network(
//                   // "https://cdn.pixabay.com/photo/2023/06/22/15/17/cat-8081701_1280.jpg",
//                   "https://cdn.pixabay.com/photo/2023/05/19/12/31/nuthatch-8004440_640.jpg",
//                   // image,
//                   //  fit: ,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   const TextUtils(
//                       // text: '\$$price',
//                       text: '\$22',
//                       fontSize: 12,
//                       fontWeight: FontWeight.w500,
//                       color: darkGreyClr),
//                   Container(
//                     height: 20,
//                     width: 50,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(8),
//                       color: mainColor,
//                     ),
//                     child: const Padding(
//                       padding: EdgeInsets.only(right: 0, left: 0),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           TextUtils(
//                               // text: '$rate',
//                               text: '4.5',
//                               fontSize: 13,
//                               fontWeight: FontWeight.w300,
//                               color: darkGreyClr),
//                           Icon(
//                             Icons.star,
//                             size: 13,
//                             color: whiteClr,
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
