import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:technupur/utils/asset_utils.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 37.h,
            width: 37.w,
            color: const Color(0xffF0F6F8),
            child: SizedBox(
              height: 18.h,
              width: 23.w,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  AssetsIcons.drawer,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30.h,
            child: Image.asset(
              Assets.textLogo,
            ),
          ),
          Container(
            height: 37.h,
            width: 37.w,
            alignment: Alignment.center,
            color: const Color(0xffF0F6F8),
            child: const Icon(
              CupertinoIcons.search,
              color: Color(0xff89999F),
            ),
          )
        ],
      ),
    );
  }
}
