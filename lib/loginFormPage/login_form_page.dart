import 'package:delivery_order/widegts/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'loginFormCubit/loginform_cubit.dart';
import 'widgets/login_form_widget.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginformCubit(),
      child: Scaffold(
        appBar: loginAppBar([SizedBox()], 'Welcom to Wasly', () {}),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  'Continue with Email',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              LoginFormField(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 20),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(builder: (context) => MainPage()),
                        // );
                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 4,
                          primary: Colors.pinkAccent,
                          padding: const EdgeInsets.all(10)),
                      child: const Text(
                        'Create account',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  'By creating an account you agree to Privacy policy and to the terms of use',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//MaterialStateProperty.all<Color>(Colors.pinkAccent)
