// import 'package:ecommerce/utils/constant/color.dart';
// import 'package:ecommerce/view/widget/text_utils.dart';
// import 'package:flutter/material.dart';

// class DeliveryContainerWidget extends StatefulWidget {
//   const DeliveryContainerWidget({super.key});

//   @override
//   State<DeliveryContainerWidget> createState() =>
//       _DeliveryContainerWidgetState();
// }

// class _DeliveryContainerWidgetState extends State<DeliveryContainerWidget> {
//   int radioContainerIndex = 1;
//   bool onChangeColor = false;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         buildRadioContainer(
//           address: 'Egypt | Cairo',
//           name: 'Rawy Store',
//           phone: '01010702927',
//           title: 'Shoping',
//           value: 1,
//           onChanged: (int? value) {
//             setState(() {
//               radioContainerIndex = value!;
//               onChangeColor = !onChangeColor;
//             });
//           },
//           color: onChangeColor ? whiteClr : offWhite,
//         ),
//         const SizedBox(
//           height: 10,
//         ),
//         buildRadioContainer(
//           address: 'Egypt | Cairo',
//           name: 'mohamed Store',
//           phone: '01010702927',
//           title: 'Shoping',
//           value: 2,
//           onChanged: (int? value) {
//             setState(() {
//               radioContainerIndex = value!;
//               onChangeColor = !onChangeColor;
//             });
//           },
//           color: onChangeColor ? offWhite : whiteClr,
//         ),
//       ],
//     );
//   }

//   Widget buildRadioContainer({
//     required Color color,
//     required int value,
//     required Function onChanged,
//     required String title,
//     required String name,
//     required String phone,
//     required String address,
//   }) {
//     return Container(
//       width: double.infinity,
//       height: 120,
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           color: color,
//           boxShadow: const [
//             BoxShadow(
//               color: darkGreyClr,
//               spreadRadius: 0.3,
//               blurRadius: 0.5,
//             ),
//           ]),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Radio(
//               value: value,
//               groupValue: radioContainerIndex,
//               fillColor: MaterialStateColor.resolveWith((states) => pinkClr),
//               onChanged: (int? value) {
//                 onChanged(value);
//               }),
//           const SizedBox(
//             width: 10,
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 0.0),
//             child: Column(
//               children: [
//                 TextUtils(
//                     text: title,
//                     fontSize: 20,
//                     fontWeight: FontWeight.w500,
//                     color: color),
//                 const SizedBox(
//                   height: 5,
//                 ),
//                 TextUtils(
//                     text: name,
//                     fontSize: 15,
//                     fontWeight: FontWeight.normal,
//                     color: color),
//                 const SizedBox(
//                   height: 5,
//                 ),
//                 TextUtils(
//                     text: phone,
//                     fontSize: 15,
//                     fontWeight: FontWeight.normal,
//                     color: color),
//                 const SizedBox(
//                   height: 5,
//                 ),
//                 TextUtils(
//                     text: address,
//                     fontSize: 15,
//                     fontWeight: FontWeight.normal,
//                     color: color),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }












// // class DlivaryWidget extends StatelessWidget {
// //   DlivaryWidget({
// //     Key? key,
// //     required this.color,
// //     required this.value,
// //     required this.onChanged,
// //     required this.title,
// //     required this.name,
// //     required this.phone,
// //     required this.address,
// //   }) : super(key: key);
// //   int radioContainerIndex = 1;
// //   bool onChangeColor = false;
// //   final Color color;
// //   final int value;
// //   final Function onChanged;
// //   final String title;
// //   final String name;
// //   final String phone;
// //   final String address;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       width: double.infinity,
// //       height: 120,
// //       decoration: BoxDecoration(
// //           borderRadius: BorderRadius.circular(10),
// //           color: color,
// //           boxShadow: const [
// //             BoxShadow(
// //               color: darkGreyClr,
// //               spreadRadius: 0.3,
// //               blurRadius: 0.5,
// //             ),
// //           ]),
// //       child: Row(
// //         mainAxisAlignment: MainAxisAlignment.start,
// //         crossAxisAlignment: CrossAxisAlignment.start,
// //         children: [
// //           Radio(
// //               value: value,
// //               groupValue: radioContainerIndex,
// //               fillColor: MaterialStateColor.resolveWith((states) => pinkClr),
// //               onChanged: (int? value) {
// //                 onChanged(value);
// //               }),
// //           const SizedBox(
// //             width: 10,
// //           ),
// //           Column(
// //             children: [
// //               TextUtils(
// //                   text: title,
// //                   fontSize: 20,
// //                   fontWeight: FontWeight.w500,
// //                   color: color),
// //               const SizedBox(
// //                 height: 5,
// //               ),
// //               TextUtils(
// //                   text: name,
// //                   fontSize: 15,
// //                   fontWeight: FontWeight.normal,
// //                   color: color),
// //               const SizedBox(
// //                 height: 5,
// //               ),
// //               TextUtils(
// //                   text: phone,
// //                   fontSize: 15,
// //                   fontWeight: FontWeight.normal,
// //                   color: color),
// //               const SizedBox(
// //                 height: 5,
// //               ),
// //               TextUtils(
// //                   text: address,
// //                   fontSize: 15,
// //                   fontWeight: FontWeight.normal,
// //                   color: color),
// //             ],
// //           )
// //         ],
// //       ),
// //     );
// //   }
// // }
