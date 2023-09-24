import 'package:easy_localization/easy_localization.dart';
import 'package:finance_manager/domain/entities/category.dart';
import 'package:finance_manager/domain/entities/transaction.dart';
import 'package:finance_manager/ui/views/settings/categories_edit_view/bloc/categories_edit_list_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryPicker extends StatefulWidget {
  const CategoryPicker(
      {required this.onCategorySelect,
      required this.transactionType,
      super.key});

  final void Function(CategoryEntity) onCategorySelect;
  final TransactionType transactionType;

  @override
  State<CategoryPicker> createState() => _CategoryPickerState();
}

class _CategoryPickerState extends State<CategoryPicker> {
  final bloc = EditCategoriesBloc();
  int _selecteidind = -1;

  @override
  Widget build(BuildContext context) {
    _selecteidind = -1;

    return BlocBuilder<EditCategoriesBloc, EditCategoriesState>(
        bloc: bloc
          ..add(EditCategoriesEvent.loadAllCategoriesByType(
              type: widget.transactionType)),
        builder: (context, state) {
          return state.getCategories.isNotEmpty
              ? StatefulBuilder(
                  builder: (context, st) => Wrap(
                    spacing: 16,
                    runSpacing: 16,
                    children: List.generate(
                        state.getCategories.length,
                        (index) => GestureDetector(
                              onTap: () {
                                widget.onCategorySelect(
                                    state.getCategories[index]);
                                st(() {
                                  _selecteidind = index;
                                });
                              },
                              child: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                          width:
                                              _selecteidind == index ? 2.5 : 1,
                                          color: state
                                              .getCategories[index].color)),
                                  child: Text(state.getCategories[index].name)),
                            )),
                  ),
                )
              : Text('no-categories'.tr());
        });
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }
}
