import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChoiceCardList extends StatelessWidget {
  const ChoiceCardList(
      {super.key, required this.childern, required this.cardController});
  final List<Widget> childern;
  final ChoiceCardController cardController;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: MediaQuery.sizeOf(context).width * (4 / 100),
      children: List.generate(
          childern.length,
          (index) => _ChoiceCardItem(
                index: index,
                cardController: cardController,
                child: childern[index],
              )),
    );
  }
}

class _ChoiceCardItem extends StatefulWidget {
  final Widget child;
  final int index;
  final ChoiceCardController cardController;

  const _ChoiceCardItem(
      {required this.index, required this.child, required this.cardController});

  @override
  State<_ChoiceCardItem> createState() => _ChoiceCardItemState();
}

class _ChoiceCardItemState extends State<_ChoiceCardItem> {
  @override
  void initState() {
    super.initState();
    widget.cardController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    widget.cardController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.cardController.changeIndex(value: widget.index);
        print(widget.index);
        print("//////////////////");
        print(widget.cardController.index);
        setState(() {});
      },
      child: Container(
        width: 50.w,
        height: 50.w,
        color: widget.cardController.index == widget.index
            ? Colors.red
            : Colors.transparent,
        child: widget.child,
      ),
    );
  }
}

class ChoiceCardController extends ChangeNotifier {
  int index = 5;

  void changeIndex({required int value}) {
    index = value;
    notifyListeners();
  }
}
