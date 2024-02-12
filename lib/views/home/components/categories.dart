import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:technupur/utils/size_utils.dart';

class HomeCategories extends StatelessWidget {
  HomeCategories({
    super.key,
  });
  List categories = [
    'All',
    'Clothing',
    'Accessories',
    'Hats',
    'Furniture',
    'Beauty Items',
    'Bback Packs',
  ];
  RxInt selected = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      width: SizeUtils.width,
      height: 50.h,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (int i = 0; i < categories.length; i++) categoryWidget(i)
            ],
          ),
        ),
      ),
    );
  }

  Obx categoryWidget(int i) {
    return Obx(() => InkWell(
          onTap: () {
            selected.value = i;
          },
          child: Container(
            height: 32.h,
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: 8.w),
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                    color: selected.value == i
                        ? Colors.red
                        : const Color(0xffD9E4E8))),
            child: Text(
              categories[i],
              style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight:
                      selected.value == i ? FontWeight.bold : FontWeight.normal,
                  color: selected.value == i
                      ? Colors.black
                      : const Color(0xff89999F)),
            ),
          ),
        ));
  }
}
