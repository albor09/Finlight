import 'package:easy_localization/easy_localization.dart';
import 'package:finance_manager/ui/bloc/userdata_bloc/userdata_bloc.dart';
import 'package:finance_manager/ui/views/settings/categories_edit_view/bloc/categories_edit_list_bloc.dart';
import 'package:finance_manager/ui/views/settings/categories_edit_view/categories_edit_item.dart';
import 'package:finance_manager/ui/views/settings/categories_edit_view/category_edit_view.dart';
import 'package:finance_manager/ui/widgets/corporative_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesEditView extends StatefulWidget {
  const CategoriesEditView({super.key});

  @override
  State<CategoriesEditView> createState() => _CategoriesEditViewState();
}

class _CategoriesEditViewState extends State<CategoriesEditView> {
  @override
  Widget build(BuildContext context) {
    context
        .read<EditCategoriesBloc>()
        .add(EditCategoriesEvent.loadAllCategories());
    return Scaffold(
      appBar: AppBar(
        title: CLargeTitle('categories'.tr()),
        leading: const PopBtn(),
      ),
      body: CSafeScreen(
        child: CSurface(child:
            BlocBuilder<EditCategoriesBloc, EditCategoriesState>(
                builder: (context, state) {
          return !state.isLoading
              ? ListView.builder(
                  itemCount: state.getCategories.length,
                  itemBuilder: ((context, index) => GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CategoryEditView(
                                    category: state.getCategories[index],
                                  )));
                        },
                        child: CategoryEditItem(
                          category: state.getCategories[index],
                        ),
                      )),
                )
              : SizedBox();
        })),
      ),
    );
  }
}
