import 'package:flutter/material.dart';

import 'package:ecommerce/utils/constant/color.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: mainColor,
        border: Border.all(width: 2, color: offWhite),
        //  borderRadius: BorderRadius.circular(50),
      ),
      child: Icon(
        icon,
        color: whiteClr,
        size: 24,
      ),
    );
  }
}
