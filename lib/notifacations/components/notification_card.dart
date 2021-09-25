import 'package:delivery_order/constants/constants.dart';
import 'package:flutter/material.dart';


class NotificationsCard extends StatelessWidget {
  final title;
  final content;
  NotificationsCard({this.title,this.content});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 10),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: kPrimaryColor)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            Icons.notifications_active,
            size: 35,
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Text(
                  title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Text(
                  content,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
