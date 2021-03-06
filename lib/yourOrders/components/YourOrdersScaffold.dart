import 'package:delivery_order/constants/constants.dart';
import 'package:delivery_order/drawer/drawer_body.dart';
import 'package:delivery_order/drawerAppbar/drawerAppBar.dart';
import 'package:delivery_order/translations/locale_keys.g.dart';
import 'package:delivery_order/yourOrders/components/your_orders_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';

import '../controller.dart';

class YourOrdersScaffold extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Future<bool> onBack() {
      // Navigator.pushReplacement(
      //     context, MaterialPageRoute(builder: (context) => MainPage()));
      return Future.value(true);
    }

    return WillPopScope(
      onWillPop: onBack,
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          key: _scaffoldKey,
          appBar: drawerAppBar(
              IconButton(
                  onPressed: () {
                    _scaffoldKey.currentState!.openDrawer();
                  },
                  icon: Icon(
                    Icons.sort,
                    color: kPrimaryColor,
                    size: 35,
                  )),
              LocaleKeys.orders.tr()),
          body: BlocProvider(
              create: (context) => YourOrdersController(),
              child: YourOrdersBody()),
          drawer: DrawerBody(
            index: 3,
          ),
        ),
      ),
    );
  }
}
