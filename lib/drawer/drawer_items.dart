import 'package:delivery_order/homePage/home_page.dart';
import 'package:delivery_order/notifacations/view.dart';
import 'package:delivery_order/translations/locale_keys.g.dart';
import 'package:delivery_order/userDetailsPage/user_details_page.dart';
import 'package:delivery_order/yourOrders/view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'controller.dart';
import 'drawer_bottom_bar.dart';
import 'drawer_single_item.dart';
import 'MainDrawerHeader.dart';
import '../../../chooseLocation/view.dart';
import 'package:easy_localization/easy_localization.dart';

class DrawerItems extends StatelessWidget {
  final List<dynamic> pages = [
    HomePage(),
    UserDetails(),
    const ChooseLocation(),
    YourOrders(),
    // OffersPage(),
    NotificationsPage(),
    // MainPage(),
    // VouchersPage(),
    // HelpPage(),
    // MainPage(),
    // MainPage()
  ];
  final List<Map<String, dynamic>> drawerItemsDetails = [
    {'icon': Icons.home, 'text': LocaleKeys.drawer_home.tr()},
    {
      'icon': Icons.person,
      'text': LocaleKeys.drawer_profile.tr(),
    },
    {
      'icon': Icons.location_on,
      'text': LocaleKeys.drawer_location.tr(),
      'ontap': () {}
    },
    {
      'icon': Icons.list_alt,
      'text': LocaleKeys.drawer_your_orders.tr(),
      'ontap': () {}
    },
    {
      'icon': Icons.notifications,
      'text': LocaleKeys.drawer_notifications.tr(),
      'ontap': () {},
    },
    // {'icon': Icons.help, 'text': LocaleKeys.drawer_help.tr(), 'ontap': () {}},
    // {
    //   'icon': Icons.assignment_turned_in_rounded,
    //   'text': LocaleKeys.drawer_about_us.tr(),
    //   'ontap': () {},
    // },
    // {
    //   'icon': Icons.logout,
    //   'text': LocaleKeys.drawer_log_out.tr(),
    //   'ontap': () {},
    // },
  ];

  DrawerItems({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // var controller = MainDrawerController.of(context);
    return ListView(
      // padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.transparent, width: 0)),
          child: MainDrawerHeader(),
        ),
        ...List.generate(drawerItemsDetails.length, (index) {
          var selected = drawerItemsDetails[index];
          return DrawerSingleItem(
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => pages[index]),
              );
            },
            text: selected['text'],
            icon: selected['icon'],
            index: index,
          );
        }),
        DrawerBottomBar(),
      ],
    );
  }
}
