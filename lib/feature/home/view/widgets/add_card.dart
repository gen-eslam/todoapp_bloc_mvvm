import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_manager/core/values/app_color.dart';
import 'package:task_manager/feature/home/view/widgets/custom_alert_dialog.dart';

class AddCard extends StatelessWidget {
  const AddCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(3.r),
      color: AppColor.lightGray,
      child: InkWell(
        onTap: () {
          showDialog(
              context: context,
              builder: (context) {
                return CustomAlertDialog();
              });
        },
        child: DottedBorder(
          color: AppColor.gray,
          dashPattern: const [8, 4],
          child: Center(
              child: Icon(
            Icons.add,
            size: MediaQuery.of(context).size.width * 0.12,
            color: Colors.black.withOpacity(0.35),
          )),
        ),
      ),
    );
  }
}
