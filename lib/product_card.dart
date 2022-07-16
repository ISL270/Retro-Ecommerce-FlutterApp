import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:streetwear_ecommerce_app/constants/color_constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          left: -3.5,
          bottom: -3.5,
          child: Container(
            width: 0.535.sw,
            height: 0.342.sh,
            color: Colors.black,
          ),
        ),
        Container(
          width: 0.55.sw,
          height: 0.35.sh,
          decoration: BoxDecoration(
            color: ColorConstants.lightBGC,
            border: Border.all(width: 0.003.sh),
          ),
          padding: REdgeInsets.all(9),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                flex: 3,
                child: Container(
                  color: Colors.white,
                ),
              ),
              Flexible(
                flex: 1,
                child: Text(
                  'Club Giv Potentiality Tee',
                  style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 25,
          right: -8,
          child: Transform.rotate(
            angle: -.15,
            child: Container(
              width: 0.23.sw,
              height: 0.05.sh,
              decoration: BoxDecoration(
                color: ColorConstants.mainColor,
                border: Border.all(width: 0.003.sh),
              ),
              child: Center(
                child: Text(
                  '\$50.00',
                  style: TextStyle(color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
