import 'package:delivery_order/checkOutOrderPage/widgets/components/app_bar_check_out.dart';
import 'package:delivery_order/checkOutOrderPage/widgets/components/check_out_buttons.dart';
import 'package:delivery_order/checkOutOrderPage/widgets/orderDetails/order_details.dart';
import 'package:delivery_order/checkOutOrderPage/widgets/orderItem/orders_list.dart';
import 'package:delivery_order/translations/locale_keys.g.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/order_cubit.dart';

class CheckOutPage extends StatelessWidget {
  const CheckOutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<bool> onBack() {
      // Navigator.pushReplacement(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => MainPage(),
      //   ),
      // );
      return Future.value(true);
    }

    return WillPopScope(
        onWillPop: onBack,
        child: Scaffold(
          appBar: checkOutAppBar(() {
            Navigator.of(context).pop();
          }, LocaleKeys.order_app_bar.tr(), context),
          body: BlocProvider(
            create: (context) => OrderCubit(),
            child: Column(
              children: [
                Expanded(child: OrderList()),
                Column(
                  children: const [
                    OrderDetails(),
                    CheckOutButtons(),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
