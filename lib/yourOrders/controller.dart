import 'package:delivery_order/yourOrders/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class YourOrdersController extends Cubit<YourOrdersState> {
  YourOrdersController() : super(YourOrdersInit());

  static YourOrdersController of(context) => BlocProvider.of(context);
  bool activeButton = false;

  void switchButton(bool button) {
    if (button != activeButton) {
      activeButton = !activeButton;
      emit(YourOrdersInit());
    }
  }
}
