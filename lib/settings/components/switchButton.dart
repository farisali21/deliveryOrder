import 'package:delivery_order/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';

import '../controller.dart';
class SwitchButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var controller = SettingsController.of(context);
    return BlocBuilder(
      bloc: controller,
      builder: (context,state)
      {return Switch(
        value: controller.isSwitched,
        onChanged: controller.switchOnChange,
        activeTrackColor: kSecondaryColor,
        activeColor: kPrimaryColor,
      );}
    );
  }
}
