import 'package:easy_localization/easy_localization.dart';
import 'package:finance_manager/core/utils/constant.dart';
import 'package:finance_manager/core/utils/extensions/string_ext.dart';
import 'package:finance_manager/domain/entities/category.dart';
import 'package:finance_manager/domain/entities/transaction.dart';
import 'package:finance_manager/ui/views/home/category_sheet/bloc/core_categories_bloc.dart';
import 'package:finance_manager/ui/views/settings/categories_edit_view/bloc/categories_edit_list_bloc.dart';
import 'package:finance_manager/ui/widgets/color_picker/color_picker.dart';
import 'package:finance_manager/ui/widgets/color_picker/color_picker_controller.dart';
import 'package:finance_manager/ui/widgets/corporative_widgets.dart';
import 'package:finance_manager/ui/widgets/unfocus.dart';
import 'package:finance_manager/ui/widgets/validable.dart';
import 'package:finance_manager/ui/widgets/validable_box.dart';
import 'package:finance_manager/ui/widgets/validable_dot.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoryEditView extends StatefulWidget {
  const CategoryEditView({required this.category, super.key});

  final CategoryEntity category;

  @override
  State<CategoryEditView> createState() => _CategoryEditViewState();
}

class _CategoryEditViewState extends State<CategoryEditView> {
  final TextEditingController _nameTextCotroller = TextEditingController();
  final ValidableController _colorValidableController = ValidableController();
  final ValidableController _nameValidableController = ValidableController();
  final ColorPickerController _colorPickerController = ColorPickerController();

  late Color _categoryColor;

  @override
  void initState() {
    _categoryColor = widget.category.color;
    _nameTextCotroller.text = widget.category.name;
    _colorPickerController.color = widget.category.color;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Unfocus(
      child: Scaffold(
        appBar: AppBar(
          leading: const PopBtn(),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: CLargeTitle(widget.category.name)),
              const SizedBox(
                width: 16,
              ),
              FaIconButton(
                FontAwesomeIcons.trashCan,
                color: Colors.red,
                onTap: () {
                  context.read<CoreCategoriesBloc>().add(
                      CoreCategoriesEvent.deleteCategory(
                          id: widget.category.id));
                },
              ),
              BlocListener<CoreCategoriesBloc, CoreCategoriesState>(
                listener: (context, state) {
                  if (state.getCategories.indexWhere(
                          (element) => element.id == widget.category.id) ==
                      -1) {
                    context.read<EditCategoriesBloc>().add(
                        EditCategoriesEvent.removeCategory(
                            id: widget.category.id));
                    Navigator.of(context).pop();
                  }
                },
                child: const SizedBox(),
              )
            ],
          ),
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
                          color: widget.category.type == TransactionType.expense
                              ? Colors.red
                              : Colors.green,
                        )),
                    const SizedBox(width: 6),
                    Text(
                      widget.category.type.name.tr(),
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue.withAlpha(100),
                          fontWeight: FontWeight.w500),
                    )
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
                      _categoryColor = c;
                    }),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(16.0),
          child: WideButton(
            onPressed: _onAddBtnPressed,
            text: 'save'.tr(),
          ),
        ),
      ),
    );
  }

  void _onAddBtnPressed() {
    if (_nameTextCotroller.text.isBlank) {
      _nameValidableController.animateNotValid();
      return;
    }
    CategoryEntity updatedCategory = CategoryEntity(
        id: widget.category.id,
        name: _nameTextCotroller.text,
        color: _categoryColor,
        type: widget.category.type);
    context.read<CoreCategoriesBloc>().add(
        CoreCategoriesEvent.updateCategory(categoryEntity: updatedCategory));
    context.read<EditCategoriesBloc>().add(
        EditCategoriesEvent.updateCategory(categoryEntity: updatedCategory));
    Navigator.of(context).pop();
  }
}
