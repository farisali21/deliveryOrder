import 'package:delivery_order/yourOrders/widgets/order_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controller.dart';
import 'order_details.dart';
import 'orders_button_row.dart';

class YourOrdersBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var controller = YourOrdersController.of(context);
    return BlocBuilder(
        bloc: controller,
        builder: (context, state) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: OrdersButtonRow(),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ListView(
                        children: [...recentOrders.map((order) => OrderCard(
                          restaurantName: order['restaurant_name'],
                          price: order['price'],
                          address: order['address'],
                          date: order['date'],
                          mealName: order['meal_name'],
                        ))],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ListView(
                        children: [...oldOrders.map((order) => OrderCard(
                          restaurantName: order['restaurant_name'],
                          price: order['price'],
                          address: order['address'],
                          date: order['date'],
                          mealName: order['meal_name'],
                        ))],
                      ),
                    )
                  ],
                ),
              ),
            ],
          );
        });
  }
}
