import 'package:delivery_order/homePage/home_page.dart';
import 'package:delivery_order/settings/view.dart';
import 'package:delivery_order/userDetailsPage/user_details_page.dart';
import 'package:delivery_order/yourOrders/components/YourOrdersScaffold.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import 'forgottenPassword/forgotten_password_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      supportedLocales: [const Locale('en'), const Locale('ar')],
      path:
          'assets/translations', // <-- change the path of the translation files
      fallbackLocale: const Locale('en'),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: YourOrdersScaffold(),
    );
  }
}
