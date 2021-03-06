import 'package:delivery_order/checkOutOrderPage/check_out_page.dart';
import 'package:delivery_order/settings/view.dart';
import 'package:delivery_order/translations/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class MainDrawerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => CheckOutPage(),
              ),
              (route) => false,
            );
          },
          icon: Icon(
            Icons.shopping_cart,
            size: 30,
            color: Colors.white,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2),
                  shape: BoxShape.circle),
              child: Icon(
                Icons.person_outline,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              LocaleKeys.drawer_login_in.tr(),
              style: TextStyle(color: Colors.white, fontSize: 20),
            )
          ],
        ),
        IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => SettingsPage()),
            );
          },
          icon: Icon(
            Icons.settings_outlined,
            size: 30,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
