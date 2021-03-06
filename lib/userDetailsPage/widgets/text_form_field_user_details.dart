import 'package:delivery_order/constants/constants.dart';
import 'package:flutter/material.dart';

Widget textFormFieldUserDetails(keyboardType, title, suffixIcon) {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(
          height: 6,
        ),
        TextFormField(
          textAlign: TextAlign.start,
          keyboardType: keyboardType,
          onChanged: (_) {},
          decoration: kTextFieldDecoration.copyWith(
            hintText: '',
            hintStyle: TextStyle(color: Colors.black54),
            suffixIcon: suffixIcon,
          ),
        ),
      ],
    ),
  );
}
