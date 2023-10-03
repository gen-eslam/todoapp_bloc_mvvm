import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_manager/core/values/app_icons.dart';

import '../../../../core/Widgets/choice_card.dart';

class CustomAlertDialog extends StatelessWidget {
  final ChoiceCardController controller = ChoiceCardController();

  CustomAlertDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      contentPadding: EdgeInsets.symmetric(horizontal: 10.r, vertical: 20.r),
      title: const Text("Text Type"),
      children: [
        TextFormField(
          decoration: const InputDecoration(
            hintText: "Title",
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        ChoiceCardList(
          cardController: controller,
          childern: AppIcon.iconsWidgets,
        ),
        TextButton(
            onPressed: () {
              print(controller.index);
            },
            child: const Text("fares"))
      ],
    );
  }
}
