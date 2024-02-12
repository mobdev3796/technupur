import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:technupur/utils/size_utils.dart';
import 'package:technupur/widgets/spaces.dart';

class HomeProducts extends StatelessWidget {
  const HomeProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeUtils.width,
      padding: EdgeInsets.all(8.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Products',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25.sp),
                  ),
                  horizontalSpace(width: 3),
                  Container(
                    height: 25.h,
                    alignment: Alignment.bottomLeft,
                    child: const Text(
                      "(Beg)",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "View All",
                    style: TextStyle(color: Colors.red, fontSize: 15.sp),
                  ),
                  horizontalSpace(width: 5),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                    size: 15.sp,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
