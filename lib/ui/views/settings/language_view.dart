import 'package:easy_localization/easy_localization.dart';
import 'package:finance_manager/core/utils/constant.dart';
import 'package:finance_manager/ui/widgets/corporative_widgets.dart';
import 'package:flutter/material.dart';

class LanguageView extends StatefulWidget {
  const LanguageView({super.key});

  @override
  State<LanguageView> createState() => _LanguageViewState();
}

class _LanguageViewState extends State<LanguageView> {
  @override
  Widget build(BuildContext context) {
    List<Locale> locales = context.supportedLocales;
    return Scaffold(
      appBar: AppBar(
        leading: const PopBtn(),
        title: CLargeTitle('language'.tr()),
      ),
      body: CSafeScreen(
        child: CSurface(
          child: ListView.builder(
              itemCount: locales.length,
              itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () async {
                        await context.setLocale(locales[index]);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                Constant
                                    .localeInfo[locales[index].languageCode]!,
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                locales[index].languageCode,
                                style: TextStyle(
                                    color: Colors.grey.shade800, fontSize: 18),
                              )
                            ],
                          ),
                          locales[index].languageCode ==
                                  context.locale.languageCode
                              ? Container(
                                  width: 16,
                                  height: 16,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue,
                                  ),
                                )
                              : Container()
                        ],
                      ),
                    ),
                  )),
        ),
      ),
    );
  }
}
