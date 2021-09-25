import 'package:delivery_order/constants/constants.dart';
import 'package:delivery_order/drawer/drawer_body.dart';
import 'package:delivery_order/drawerAppbar/drawerAppBar.dart';
import 'package:delivery_order/settings/components/settings_body.dart';
import 'package:delivery_order/translations/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class SettingsScaffold extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  SettingsScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<bool> onBack() {
      // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MainPage()));
      return Future.value(true);
    }

    return WillPopScope(
        onWillPop: onBack,
        child: Scaffold(
          key: _scaffoldKey,
          appBar: drawerAppBar(
              IconButton(
                  onPressed: () {
                    _scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(
                    Icons.menu,
                    color: kPrimaryColor,
                    size: 35,
                  )),
              LocaleKeys.drawer_settings.tr()),
          body: SettingsBody(),
          drawer: DrawerBody(
            index: 0,
          ),
        ));
  }
}
