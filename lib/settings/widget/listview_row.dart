import 'package:delivery_order/constants/constants.dart';
import 'package:flutter/material.dart';

class ListViewRow1 extends StatelessWidget {
  final leftWidget;
  final rightWidget;
  const ListViewRow1({this.leftWidget,this.rightWidget});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 40),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: kPrimaryColor,width: 1))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          leftWidget,
          rightWidget,
        ],
      ),
    );
  }
}
