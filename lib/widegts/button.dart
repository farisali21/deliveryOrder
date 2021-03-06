import 'package:delivery_order/constants/constants.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final onpressed;
  final text;
  MainButton({this.onpressed,this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor)),
          onPressed: onpressed ,
          child: Text(text,style: TextStyle(fontSize: 20),) ,
      ),
    );
  }
}
