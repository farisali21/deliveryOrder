import 'package:delivery_order/constants/constants.dart';
import 'package:delivery_order/widegts/app_bar.dart';
import 'package:flutter/material.dart';

class ForgottenPassword extends StatelessWidget {
  const ForgottenPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: loginAppBar([const SizedBox()], 'Forgotten Password', () {}),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
        child: Column(
          children: [
            TextField(
              textAlign: TextAlign.start,
              keyboardType: TextInputType.emailAddress,
              onChanged: (_) {},
              decoration: kTextFieldDecoration.copyWith(
                hintText: 'Email',
                hintStyle: TextStyle(color: Colors.black54),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Resut Your password'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.pink,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
