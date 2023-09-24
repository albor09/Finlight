import 'package:easy_localization/easy_localization.dart';
import 'package:finance_manager/ui/bloc/userdata_bloc/userdata_bloc.dart';
import 'package:finance_manager/ui/views/settings/categories_edit_view/categories_edit_view.dart';
import 'package:finance_manager/ui/views/settings/language_view.dart';
import 'package:finance_manager/ui/views/settings/name_view.dart';
import 'package:finance_manager/ui/widgets/corporative_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({bool lala = false, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CLargeTitle('settings'.tr()),
        leading: const PopBtn(),
      ),
      body: CSafeScreen(
        child: Column(
          children: [
            CSurface(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: Column(
                children: [
                  Builder(
                    builder: (context) {
                      final name = context.select(
                          (UserDataBloc bloc) => bloc.state.getUserData!.name);
                      return _buildItem(
                          FontAwesomeIcons.user, 'name'.tr(), name, () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const ChangeNameView()));
                      });
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  _buildItem(
                      FontAwesomeIcons.coins,
                      'currency'.tr(),
                      context
                          .read<UserDataBloc>()
                          .state
                          .getUserData!
                          .currency
                          .name,
                      () {}),
                  const SizedBox(
                    height: 16,
                  ),
                  _buildItem(FontAwesomeIcons.bars, 'categories'.tr(), '', () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const CategoriesEditView()));
                  }),
                ],
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            CSurface(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: Column(
                children: [
                  _buildItem(FontAwesomeIcons.language, 'language'.tr(),
                      context.locale.languageCode, () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const LanguageView()));
                  }),
                  const SizedBox(
                    height: 16,
                  ),
                  Builder(
                    builder: (context) {
                      final themeMode = context.select((UserDataBloc bloc) =>
                          bloc.state.getUserData!.themeMode);
                      return _buildItem(
                          themeMode == ThemeMode.dark
                              ? FontAwesomeIcons.moon
                              : FontAwesomeIcons.sun,
                          'theme'.tr(),
                          themeMode == ThemeMode.dark
                              ? 'dark'.tr()
                              : 'light'.tr(), () {
                        context.read<UserDataBloc>().add(UserDataEvent.setWith(
                            themeMode: themeMode == ThemeMode.dark
                                ? ThemeMode.light
                                : ThemeMode.dark));
                      });
                    },
                  ),
                ],
              ),
            ),
            // const SizedBox(
            //   height: 32,
            // ),
            // CSurface(
            //   padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            //   child: Column(
            //     children: [
            //       _buildItem(FontAwesomeIcons.database, 'data-managment', '',
            //           () {
            //         Navigator.of(context).push(MaterialPageRoute(
            //             builder: (context) => const DataManagmentView()));
            //       })
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }

  _buildItem(
      IconData icon, String text, String val, void Function()? onPressed) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onPressed,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 36, child: FaIcon(icon)),
          const SizedBox(width: 8),
          CSmallTitle(text),
          const SizedBox(width: 8),
          Expanded(
              child: Text(val,
                  softWrap: false,
                  textAlign: TextAlign.end,
                  maxLines: 1,
                  overflow: TextOverflow.fade,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey.shade700,
                  )))
        ],
      ),
    );
  }
}
