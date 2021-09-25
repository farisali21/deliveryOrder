import 'package:delivery_order/settings/components/switchButton.dart';
import 'package:delivery_order/settings/widget/listview_row.dart';
import 'package:delivery_order/settings/widget/settings_text.dart';
import 'package:delivery_order/translations/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:easy_localization/easy_localization.dart';
import '../controller.dart';
import 'country_drop_down.dart';
import 'language_drop_down.dart';

class SettingsBody extends StatelessWidget {
  const SettingsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = SettingsController.of(context);
    return ListView(
      children: [
        ListViewRow1(
          leftWidget: SettingsText(
            text: LocaleKeys.drawer_notifications.tr(),
          ),
          rightWidget: SwitchButton(),
        ),
        ListViewRow1(
          leftWidget: SettingsText(
            text: LocaleKeys.drawer_language.tr(),
          ),
          rightWidget: LanguageDropDown(),
        ),
        ListViewRow1(
          leftWidget: SettingsText(
            text: LocaleKeys.drawer_country.tr(),
          ),
          rightWidget: CountryDropDown(),
        ),
      ],
    );
  }
}
