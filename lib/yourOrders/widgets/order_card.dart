import 'package:delivery_order/checkOutOrderPage/check_out_page.dart';
import 'package:delivery_order/constants/constants.dart';
import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  final restaurantName;
  final mealName;
  final date;
  final address;
  final price;

  OrderCard(
      {this.price,
      this.address,
      this.date,
      this.mealName,
      this.restaurantName});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const CheckOutPage()));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 30),
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        decoration: kBoxDecoration,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              restaurantName,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              mealName,
              style: const TextStyle(color: Colors.grey, fontSize: 18),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              date,
              style: const TextStyle(color: Colors.grey, fontSize: 18),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              address,
              style: const TextStyle(color: Colors.grey, fontSize: 18),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Price : $price',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
