import 'package:ecommerce/utils/constant/color.dart';
import 'package:flutter/material.dart';

class SizeList extends StatefulWidget {
  const SizeList({super.key});

  @override
  State<SizeList> createState() => _SizeListState();
}

class _SizeListState extends State<SizeList> {
  final List<String> sizeList = ['S', 'M', 'L', 'X', 'XL', 'XXL'];
  var currentSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  currentSelected = index;
                });
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                    color: currentSelected == index ? mainColor : offWhite,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 2, color: whiteClr)),
                child: Text(
                  sizeList[index],
                  style: TextStyle(
                      color: currentSelected == index ? whiteClr : darkGreyClr,
                      fontWeight: FontWeight.w500),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(
                width: 10,
              ),
          itemCount: sizeList.length),
    );
  }
}
