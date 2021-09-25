import 'package:delivery_order/constants/constants.dart';
import 'package:delivery_order/drawerAppbar/drawerAppBar.dart';
import 'package:delivery_order/translations/locale_keys.g.dart';
import 'package:delivery_order/yourOrders/components/order_details.dart';
import 'package:delivery_order/yourOrders/widgets/order_card.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Home'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            ...recentOrders.map((order) => OrderCard(
                  restaurantName: order['restaurant_name'],
                  price: order['price'],
                  address: order['address'],
                  date: order['date'],
                  mealName: order['meal_name'],
                ))
          ],
        ),
      ),
    );
  }
}
