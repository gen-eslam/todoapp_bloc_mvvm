import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_manager/feature/home/view/widgets/add_card.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            title: Text(
              "My List",
              style: TextStyle(
                  fontSize: 24.0.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(10.r),
            sliver: SliverGrid.count(
              crossAxisCount: 2,
              children: const [AddCard(),],
            ),
          ),
        ],
      ),
    );
  }
}
