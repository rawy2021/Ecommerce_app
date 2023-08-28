import 'package:ecommerce/utils/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryHome extends StatelessWidget {
  const CategoryHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      padding: EdgeInsets.all(5.r),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.r),
              decoration: BoxDecoration(
                  color: mainColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // Shadow color
                      spreadRadius: 5.r, // How much the shadow spreads
                      blurRadius: 10.r, // How blurry the shadow is
                      offset:
                          Offset(3.r, 3.r), // Offset in (x,y) from the widget
                    )
                  ]),
              // width: 100,
              //color: Colors.red,
              child: const Center(
                  child: Text(
                'Mens',
                style: TextStyle(color: whiteClr),
              )),
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.r),
            decoration: BoxDecoration(
                color: mainColor,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2), // Shadow color
                    spreadRadius: 5, // How much the shadow spreads
                    blurRadius: 10, // How blurry the shadow is
                    offset: Offset(3, 3), // Offset in (x,y) from the widget
                  )
                ]),
            // width: 100,
            //color: Colors.red,
            child: const Center(
                child: Text(
              'Whoman',
              style: TextStyle(color: whiteClr),
            )),
          ),
          SizedBox(
            width: 10.w,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.r),
            decoration: BoxDecoration(
                color: mainColor,
                borderRadius: BorderRadius.circular(10.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2), // Shadow color
                    spreadRadius: 5.r, // How much the shadow spreads
                    blurRadius: 10.r, // How blurry the shadow is
                    offset: Offset(3.r, 3.r), // Offset in (x,y) from the widget
                  )
                ]),
            //width: 100,
            //color: Colors.red,
            child: const Center(
                child: Text(
              'Boy',
              style: TextStyle(color: whiteClr),
            )),
          ),
          SizedBox(
            width: 10.w,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.r),
            decoration: BoxDecoration(
                color: mainColor,
                borderRadius: BorderRadius.circular(10.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2.r), // Shadow color
                    spreadRadius: 5.r, // How much the shadow spreads
                    blurRadius: 10.r, // How blurry the shadow is
                    offset: Offset(3.r, 3.r), // Offset in (x,y) from the widget
                  )
                ]),
            // width: 100,
            //color: Colors.red,
            child: const Center(
                child: Text(
              'Girls',
              style: TextStyle(color: whiteClr),
            )),
          ),
          SizedBox(
            width: 10.r,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.r),
            decoration: BoxDecoration(
                color: mainColor,
                borderRadius: BorderRadius.circular(10.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2.r), // Shadow color
                    spreadRadius: 5.r, // How much the shadow spreads
                    blurRadius: 10.r, // How blurry the shadow is
                    offset: Offset(3.r, 3.r), // Offset in (x,y) from the widget
                  )
                ]),
            //width: 100,
            //color: Colors.red,
            child: const Center(
                child: Text(
              'Jewelry',
              style: TextStyle(color: whiteClr),
            )),
          ),
        ],
      ),
    );
  }
}
