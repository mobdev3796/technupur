import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:technupur/utils/asset_utils.dart';
import 'package:technupur/utils/size_utils.dart';
import 'package:technupur/views/home/components/categories.dart';
import 'package:technupur/views/home/components/products.dart';
import 'package:technupur/views/home/components/top_bar.dart';
import 'package:technupur/widgets/spaces.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: SizeUtils.height,
        width: SizeUtils.width,
        color: Colors.white,
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            const HomeTopBar(),
            verticalSpace(height: 5),
            const Divider(),
            HomeCategories(),
            const Divider(),
            const HomeProducts()
          ],
        ),
      ),
    );
  }
}
