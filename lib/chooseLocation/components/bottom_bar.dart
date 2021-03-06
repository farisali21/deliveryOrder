import 'package:delivery_order/translations/locale_keys.g.dart';
import 'package:delivery_order/widegts/button.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(LocaleKeys.map_choose_location.tr(),),
          Row(
            children: const [
              Icon(Icons.location_on,color: Colors.black,),
              Text('Street',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
            ],
          ),
          MainButton(onpressed: (){},text: LocaleKeys.map_choose_location.tr(),)
        ],
      ),
    );
  }
}
