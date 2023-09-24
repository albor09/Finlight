import 'package:easy_localization/easy_localization.dart';
import 'package:finance_manager/core/utils/constant.dart';
import 'package:finance_manager/core/utils/extensions/string_ext.dart';
import 'package:finance_manager/domain/entities/category.dart';
import 'package:finance_manager/domain/entities/transaction.dart';
import 'package:finance_manager/ui/views/settings/settings_view.dart';
import 'package:finance_manager/ui/widgets/color_picker/color_picker.dart';
import 'package:finance_manager/ui/widgets/color_picker/color_picker_controller.dart';
import 'package:finance_manager/ui/widgets/corporative_widgets.dart';
import 'package:finance_manager/ui/widgets/unfocus.dart';
import 'package:finance_manager/ui/widgets/validable.dart';
import 'package:finance_manager/ui/widgets/validable_box.dart';
import 'package:finance_manager/ui/widgets/validable_dot.dart';
import 'package:finance_manager/ui/widgets/validable_text_field.dart';
import 'package:flutter/material.dart';

class AddCategoryView extends StatefulWidget {
  const AddCategoryView({super.key});

  @override
  State<AddCategoryView> createState() => _AddCategoryViewState();
}

class _AddCategoryViewState extends State<AddCategoryView> {
  final TextEditingController _nameTextCotroller = TextEditingController();
  final ValidableController _colorValidableController = ValidableController();
  final ValidableController _nameValidableController = ValidableController();
  final ColorPickerController _colorPickerController = ColorPickerController();

  TransactionType _transactionType = TransactionType.expense;
  Color? _selectedColor;

  @override
  Widget build(BuildContext context) {
    return Unfocus(
      child: Scaffold(
        appBar: AppBar(
          leading: const PopBtn(),
          title: CLargeTitle('add-category'.tr()),
        ),
        body: CSafeScreen(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CSmallTitle(
                      'category-name'.tr(),
                    ),
                    const Spacer(),
                    Container(
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _transactionType == TransactionType.expense
                              ? Colors.red
                              : Colors.green,
                        )),
                    const SizedBox(width: 6),
                    CTextButton(
                        text: _transactionType.name.tr(),
                        onPressed: () {
                          setState(() {
                            _transactionType =
                                _transactionType == TransactionType.expense
                                    ? TransactionType.income
                                    : TransactionType.expense;
                          });
                        })
                  ],
                ),
                const SizedBox(height: 16),
                Stack(
                  children: [
                    TextField(
                      showCursor: false,
                      controller: _nameTextCotroller,
                    ),
                    Positioned.fill(
                      child: IgnorePointer(
                        child: ValidableOutlineBox(
                          validableController: _nameValidableController,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 32),
                Row(
                  children: [
                    CSmallTitle(
                      'category-color'.tr(),
                    ),
                    const SizedBox(width: 16),
                    ValidableDot(validableController: _colorValidableController)
                  ],
                ),
                const SizedBox(height: 16),
                CColorPicker(
                    colors: Constant.colors,
                    controller: _colorPickerController,
                    onColorSelcted: (Color c) {
                      _selectedColor = c;
                    }),
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
    if (_nameTextCotroller.text.isBlank) {
      _nameValidableController.animateNotValid();
      return;
    }
    if (_selectedColor == null) {
      _colorValidableController.animateNotValid();
      return;
    }
    Navigator.pop(
        context,
        CategoryEntity(
            id: 0,
            name: _nameTextCotroller.text.trim(),
            color: _selectedColor!,
            type: _transactionType));
  }
}
