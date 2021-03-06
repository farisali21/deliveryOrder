import 'package:delivery_order/translations/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:easy_localization/easy_localization.dart';
class DrawerBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 35,),
        Text(
          LocaleKeys.drawer_contact_us.tr(),
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        const SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Icon(
              FontAwesomeIcons.facebook,
              color: Colors.white,
            ),
            Icon(
              FontAwesomeIcons.instagram,
              color: Colors.white,

            ),
            Icon(
              FontAwesomeIcons.twitter,
              color: Colors.white,

            ),

          ],
        ),
        const SizedBox(height: 50,)
      ],
    );
  }
}
