import 'package:delivery_order/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../loginFormCubit/loginform_cubit.dart';
import 'check_box_widget.dart';

class LoginFormField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginformCubit, LoginformState>(
      builder: (context, state) {
        final controller = LoginformCubit.of(context);
        return Form(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.name,
                  onChanged: (_) {},
                  decoration: kTextFieldDecoration.copyWith(
                    hintText: 'First name',
                    hintStyle: const TextStyle(color: Colors.black54),
                  ),
                ),
                const SizedBox(height: 18),
                TextFormField(
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.name,
                  onChanged: (_) {},
                  decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Last name',
                    hintStyle: const TextStyle(color: Colors.black54),
                  ),
                ),
                const SizedBox(height: 18),
                TextFormField(
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (_) {},
                  decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Email',
                    hintStyle: const TextStyle(color: Colors.black54),
                  ),
                ),
                const SizedBox(height: 18),
                TextFormField(
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.number,
                  onChanged: (_) {},
                  decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Phone Number',
                    hintStyle: const TextStyle(color: Colors.black54),
                  ),
                ),
                const SizedBox(height: 18),
                TextFormField(
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: !controller.passwordVisible,
                  onChanged: (_) {},
                  decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Password',
                    hintStyle: const TextStyle(color: Colors.black54),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        controller.changePasswordState();
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          controller.passwordVisible ? 'show' : 'hide',
                          style: const TextStyle(fontSize: 14, color: Colors.pink),
                        ),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8.0, left: 8.0),
                  child: Text(
                    'your password must be at least 6 characters',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
                  ),
                ),
                checkBoxWidget(controller),
              ],
            ),
          ),
        );
      },
    );
  }
}
