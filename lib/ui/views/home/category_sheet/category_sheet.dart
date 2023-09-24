import 'package:finance_manager/ui/bloc/userdata_bloc/userdata_bloc.dart';
import 'package:finance_manager/ui/views/home/bloc/home_cubit.dart';
import 'package:finance_manager/ui/views/home/category_sheet/bloc/core_categories_bloc.dart';
import 'package:finance_manager/ui/widgets/category_list_item.dart';
import 'package:finance_manager/ui/widgets/corporative_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategorySheet extends StatefulWidget {
  const CategorySheet({super.key});

  @override
  State<CategorySheet> createState() => _CategorySheetState();
}

class _CategorySheetState extends State<CategorySheet> {
  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final homeCubit = context.read<HomeCubit>();
    return BlocBuilder<CoreCategoriesBloc, CoreCategoriesState>(
        builder: (context, state) {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(width: 16),
              FaIconButton(
                FontAwesomeIcons.plus,
                onTap: () async {
                  context.read<HomeCubit>().setSheetState(BottomSheetState.add);
                },
              ),
            ],
          ),
          const Divider(
            thickness: 0.1,
          ),
          Expanded(
            child: Builder(
              builder: (context) {
                final sign = context.select((UserDataBloc userDataBloc) =>
                    userDataBloc.state.getUserData!.currency.sign);
                return ListView.builder(
                  controller: _scrollController,
                  itemCount: state.getCategories.length,
                  itemBuilder: (context, index) {
                    return !state.isLoading
                        ? GestureDetector(
                            behavior: HitTestBehavior.translucent,
                            // onTap: () {
                            //   homeCubit
                            //       .setSelected(state.getCategories[index].id);
                            // },
                            child: CategoryListItem(
                              category: state.getCategories[index],
                              currencySign: sign,
                            ))
                        : const SizedBox();
                  },
                );
              },
            ),
          ),
        ],
      );
    });
  }

  void _scrollDown() {
    if (_scrollController.position.maxScrollExtent == 0) return;
    _scrollController.animateTo(
        _scrollController.position.maxScrollExtent + 100,
        duration: Duration(milliseconds: 250),
        curve: Curves.ease);
  }
}
