import 'package:easy_localization/easy_localization.dart';
import 'package:finance_manager/core/utils/extensions/string_ext.dart';
import 'package:finance_manager/domain/entities/category.dart';
import 'package:finance_manager/domain/entities/transaction.dart';
import 'package:finance_manager/ui/bloc/userdata_bloc/userdata_bloc.dart';
import 'package:finance_manager/ui/widgets/category_picker/category_picker.dart';
import 'package:finance_manager/ui/widgets/corporative_widgets.dart';
import 'package:finance_manager/ui/widgets/fintype_pciker.dart';
import 'package:finance_manager/ui/widgets/unfocus.dart';
import 'package:finance_manager/ui/widgets/validable.dart';
import 'package:finance_manager/ui/widgets/validable_box.dart';
import 'package:finance_manager/ui/widgets/validable_dot.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddTransactionView extends StatefulWidget {
  const AddTransactionView({super.key});

  @override
  State<AddTransactionView> createState() => _AddTransactionViewState();
}

class _AddTransactionViewState extends State<AddTransactionView> {
  int _selectedCategoryId = -1;
  TransactionType transactionType = TransactionType.expense;

  final TextEditingController _valueTextController = TextEditingController();
  final ValidableController _valueValidableController = ValidableController();
  final ValidableController _categoryValidableController =
      ValidableController();

  @override
  Widget build(BuildContext context) {
    String sign = context.read<UserDataBloc>().state.getUserData!.currency.sign;
    return Unfocus(
      child: Scaffold(
        appBar: AppBar(
          leading: const PopBtn(),
          title: CLargeTitle('add-transaction'.tr()),
        ),
        body: CSafeScreen(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CSmallTitle(
                      'amount'.tr(),
                    ),
                    const Spacer(),
                    Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: transactionType == TransactionType.expense
                              ? Colors.red
                              : Colors.green,
                        )),
                    const SizedBox(width: 6),
                    CTextButton(
                        text: transactionType.name.tr(),
                        onPressed: () {
                          setState(() {
                            _selectedCategoryId = -1;
                            transactionType =
                                transactionType == TransactionType.expense
                                    ? TransactionType.income
                                    : TransactionType.expense;
                          });
                        })
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Stack(
                  children: [
                    TextField(
                      showCursor: false,
                      controller: _valueTextController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(suffixText: sign),
                      onChanged: (value) {
                        _valueTextController.text =
                            _valueTextController.text.replaceAll(',', '.');
                        _valueTextController.selection =
                            TextSelection.collapsed(
                                offset: _valueTextController.text.length);
                      },
                    ),
                    Positioned.fill(
                        child: IgnorePointer(
                      child: ValidableOutlineBox(
                        validableController: _valueValidableController,
                      ),
                    ))
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    CSmallTitle(
                      'category'.tr(),
                    ),
                    const SizedBox(width: 16),
                    ValidableDot(
                        validableController: _categoryValidableController)
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                CategoryPicker(
                  transactionType: transactionType,
                  onCategorySelect: (CategoryEntity category) {
                    _selectedCategoryId = category.id;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(16.0),
          child: WideButton(
            onPressed: _onAddBtnPressed,
            text: 'add'.tr(),
          ),
        ),
      ),
    );
  }

  _onAddBtnPressed() {
    if (_valueTextController.text.isBlank ||
        !_valueTextController.text.isOnlyDigits) {
      _valueValidableController.animateNotValid();
      return;
    }
    if (_selectedCategoryId == -1) {
      _categoryValidableController.animateNotValid();
      return;
    }

    Navigator.of(context).pop(TransactionEntity(
        id: 0,
        categoryId: _selectedCategoryId,
        description: '',
        value: double.parse(_valueTextController.text),
        date: DateTime.now(),
        type: transactionType));
  }
}
