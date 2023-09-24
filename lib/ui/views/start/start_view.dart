import 'package:easy_localization/easy_localization.dart';
import 'package:finance_manager/core/utils/constant.dart';
import 'package:finance_manager/domain/entities/category.dart';
import 'package:finance_manager/domain/entities/transaction.dart';
import 'package:finance_manager/ui/views/home/category_sheet/bloc/core_categories_bloc.dart';
import 'package:finance_manager/ui/views/start/name_setup_view.dart';
import 'package:finance_manager/ui/widgets/corporative_widgets.dart';
import 'package:finance_manager/ui/widgets/unfocus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StartView extends StatefulWidget {
  const StartView({super.key});

  @override
  State<StartView> createState() => _StartViewState();
}

class _StartViewState extends State<StartView> {
  final startCategories = [
    CategoryEntity(
        id: 0,
        name: 'groceries'.tr(),
        color: Constant.colors[15],
        type: TransactionType.expense),
    CategoryEntity(
        id: 0,
        name: 'taxi'.tr(),
        color: Constant.colors[12],
        type: TransactionType.expense),
    CategoryEntity(
        id: 0,
        name: 'entertainment'.tr(),
        color: Constant.colors[6],
        type: TransactionType.expense),
    CategoryEntity(
        id: 0,
        name: 'personal-care'.tr(),
        color: Constant.colors[0],
        type: TransactionType.expense)
  ];

  @override
  void initState() {
    final coreCategoriesBloc = context.read<CoreCategoriesBloc>();
    for (var i = 0; i < startCategories.length; i++) {
      coreCategoriesBloc.add(
          CoreCategoriesEvent.addCategory(categoryEntity: startCategories[i]));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Unfocus(
      child: Scaffold(
        body: CSafeScreen(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: CSurface(
                  child: Image.asset(
                    'assets/img/start.png',
                    scale: 1.8,
                  ),
                ),
              ),
              const SizedBox(height: 32),
              Text(
                'start-tl'.tr(),
                style:
                    const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Text('start-ds'.tr()),
              const SizedBox(height: 16),
              WideButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const NameSetupView()));
                  },
                  text: 'continue'.tr())
            ],
          ),
        ),
      ),
    );
  }
}
