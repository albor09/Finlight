import 'package:easy_localization/easy_localization.dart';
import 'package:finance_manager/ui/views/add_category.dart';
import 'package:finance_manager/ui/views/add_transaction.dart';
import 'package:finance_manager/ui/views/home/bloc/home_cubit.dart';
import 'package:finance_manager/ui/views/home/category_sheet/bloc/core_categories_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddList extends StatelessWidget {
  const AddList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
                onTap: () {
                  context
                      .read<HomeCubit>()
                      .setSheetState(BottomSheetState.categories);
                },
                child: const FaIcon(FontAwesomeIcons.arrowLeft))),
        const Divider(
          thickness: 0.1,
        ),
        Expanded(
          child: ListView(
            children: [
              _buildListItem('category'.tr(), FontAwesomeIcons.bars,
                  () => _onCategoryAdd(context)),
              _buildListItem(
                  'transaction'.tr(),
                  FontAwesomeIcons.arrowsLeftRight,
                  () => _onTransactionAdd(context)),
              // _buildListItem('Money source', FontAwesomeIcons.wallet,
              //     () => _onTransactionAdd(context))
            ],
          ),
        ),
      ],
    );
  }

  _onCategoryAdd(BuildContext context) async {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const AddCategoryView())
      ..completed.then((categoryEntity) {
        if (categoryEntity == null) return;
        context.read<HomeCubit>().setSheetState(BottomSheetState.categories);
        context.read<CoreCategoriesBloc>().add(
            CoreCategoriesEvent.addCategory(categoryEntity: categoryEntity));
      }));
  }

  _onTransactionAdd(BuildContext context) async {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const AddTransactionView())
          ..completed.then((transactionEntity) {
            if (transactionEntity == null) return;
            context
                .read<HomeCubit>()
                .setSheetState(BottomSheetState.categories);
            context.read<CoreCategoriesBloc>().add(
                CoreCategoriesEvent.addTransaction(
                    transactionEntity: transactionEntity));
          }));
  }

  Widget _buildListItem(String text, IconData icon, [Function()? onPress]) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6),
        child: Row(
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(4),
              width: 30,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(4)),
              child: FaIcon(
                icon,
                size: 22,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              text,
              style: const TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
