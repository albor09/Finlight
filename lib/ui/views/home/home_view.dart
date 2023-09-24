import 'package:easy_localization/easy_localization.dart';
import 'package:finance_manager/core/utils/extensions/datetime_ext.dart';
import 'package:finance_manager/domain/entities/category.dart';
import 'package:finance_manager/core/utils/utils.dart';
import 'package:finance_manager/domain/entities/data_selection.dart';
import 'package:finance_manager/domain/entities/date_range.dart';
import 'package:finance_manager/domain/entities/transaction.dart';
import 'package:finance_manager/ui/bloc/userdata_bloc/userdata_bloc.dart';
import 'package:finance_manager/ui/views/home/add_sheet.dart/add_list.dart';
import 'package:finance_manager/ui/views/home/category_sheet/bloc/core_categories_bloc.dart';
import 'package:finance_manager/ui/views/home/category_sheet/category_sheet.dart';
import 'package:finance_manager/ui/views/home/date_picker_sheet/date_picker_sheet.dart';
import 'package:finance_manager/ui/views/settings/settings_view.dart';
import 'package:finance_manager/ui/widgets/corporative_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:smooth_chart/smooth_chart.dart';
import 'package:finance_manager/ui/views/home/bloc/home_cubit.dart';

class HomeView extends StatefulWidget {
  const HomeView({this.isFirstTime = false, super.key});

  final bool isFirstTime;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late HomeCubit homeCubit;
  late CoreCategoriesBloc coreCategoriesBloc;

  final GlobalKey _one = GlobalKey();
  final GlobalKey _two = GlobalKey();

  @override
  void initState() {
    homeCubit = context.read<HomeCubit>();
    coreCategoriesBloc = context.read<CoreCategoriesBloc>();
    if (!widget.isFirstTime) return;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 1), () {
        ShowCaseWidget.of(context).startShowCase([_one, _two]);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        homeCubit.setSheetState(BottomSheetState.categories);
        return false;
      },
      child: Scaffold(
        body: SafeArea(
          child:
              BlocBuilder<HomeCubit, HomeState>(builder: (context, homeState) {
            return Container(
              decoration: const BoxDecoration(),
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(child:
                            BlocBuilder<UserDataBloc, UserDataState>(
                                builder: (context, userDataState) {
                          return const Text(
                            "hello",
                            overflow: TextOverflow.fade,
                            softWrap: false,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                          ).tr(
                              args: [userDataState.getUserData!.name],
                              context: context);
                        })),
                        const SizedBox(
                          width: 8,
                        ),
                        GestureDetector(
                            child: const FaIcon(FontAwesomeIcons.gear),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const SettingsView()));
                            })
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () async {
                            var result = await _onDateTimeRangePick();
                            if (result != null) {
                              homeCubit.setTimeInterval(result);
                              coreCategoriesBloc.add(
                                  CoreCategoriesEvent.loadCategories(
                                      dataSelection: DataSelection(
                                          categoryType: homeState
                                              .dataSelection.categoryType,
                                          range: result)));
                            }
                          },
                          child: CShowcase(
                            description: 'tip-two'.tr(),
                            showCaseKey: _two,
                            child: Text(
                              _buildDateRangeString(
                                  homeState.dataSelection.range),
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey),
                            ),
                          ),
                        ),
                        const Spacer(),
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                              color: homeState.dataSelection.categoryType ==
                                      TransactionType.expense
                                  ? Colors.red
                                  : Colors.green,
                              shape: BoxShape.circle),
                        ),
                        const SizedBox(width: 8),
                        Text(homeState.dataSelection.categoryType.name.tr(),
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey))
                      ],
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    Container(
                        alignment: Alignment.center,
                        child: BlocBuilder<CoreCategoriesBloc,
                                CoreCategoriesState>(
                            builder: (context, categorySheetState) {
                          return GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            onDoubleTap: () {
                              homeCubit.switchCategoryType();
                              coreCategoriesBloc.add(
                                CoreCategoriesEvent.loadCategories(
                                    dataSelection: DataSelection(
                                        range: homeState.dataSelection.range,
                                        categoryType: homeState.dataSelection
                                                    .categoryType ==
                                                TransactionType.expense
                                            ? TransactionType.income
                                            : TransactionType.expense)),
                              );
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                CShowcase(
                                  description: 'tip-one'.tr(),
                                  showCaseKey: _one,
                                  child: DoughnutChart(
                                    DoughnutChartData(
                                        angleOffset: 4,
                                        segmentSpacing: 8,
                                        segments: _buildData(
                                            MediaQuery.of(context).size,
                                            categorySheetState.getCategories,
                                            homeState.selectedId)),
                                    animationDuration:
                                        Duration(milliseconds: 500),
                                    animationCurve: Curves.ease,
                                  ),
                                ),
                                BlocBuilder<UserDataBloc, UserDataState>(
                                  builder: (context, userDataState) {
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16),
                                      child: FittedBox(
                                        child: Text(
                                          cutToInteger(CategoryEntity
                                                  .getCategoriesSum(
                                                      categorySheetState
                                                          .getCategories)) +
                                              userDataState
                                                  .getUserData!.currency.sign,
                                          style: const TextStyle(
                                              fontSize: 26,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    );
                                  },
                                )
                              ]),
                            ),
                          );
                        })),
                    const SizedBox(
                      height: 28,
                    ),
                    Expanded(
                        child: CSurface(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      child: AnimatedSwitcher(
                          duration: const Duration(milliseconds: 500),
                          child: _switchBottomSheet(homeState)),
                    ))
                  ]),
            );
          }),
        ),
      ),
    );
  }

  Future<CDateRange?> _showDateTimeRangeSheet() async {
    return Navigator.of(context).push(ModalBottomSheetRoute<CDateRange>(
        builder: (context) => const DatePickerSheet(),
        isScrollControlled: false)
      ..completed.then((value) => value));
  }

  String _buildDateRangeString(CDateRange range) {
    if (range.text != null) {
      return range.text!.tr();
    }
    return '${range.start.toShortString()}-${range.end.toShortString()}';
  }

  Widget _switchBottomSheet(HomeState state) {
    switch (state.sheetState) {
      case BottomSheetState.categories:
        return CategorySheet();
      case BottomSheetState.add:
        return AddList();
      case BottomSheetState.detailedCategory:
        return Container();
    }
  }

  Future<CDateRange?> _onDateTimeRangePick() async {
    var result = await _showDateTimeRangeSheet();
    if (result != null && result.text == null && context.mounted) {
      final range = await showDateRangePicker(
          context: context,
          firstDate: DateTime(2023),
          lastDate: DateTime.now());
      if (range != null)
        result = CDateRange(start: range.start, end: range.end);
    }
    return result;
  }

  List<DoughnutSegmentData> _buildData(
      Size size, List<CategoryEntity> categories, int selectedId) {
    double radius = size.width * 0.5 / 2;
    if (categories.isEmpty ||
        categories.fold(
                0.0,
                (previousValue, element) =>
                    previousValue + element.sumInPeriod) ==
            0) {
      return [
        DoughnutSegmentData(
            value: 1,
            radius: radius,
            color: Colors.red,
            gradient:
                LinearGradient(colors: [Colors.grey, Colors.grey.shade400]))
      ];
    }
    if (selectedId == -1) {
      return List.generate(
          categories.length,
          (index) => DoughnutSegmentData(
              value: categories[index].sumInPeriod,
              color: categories[index].color,
              gradient: LinearGradient(colors: [
                categories[index].color,
                lighten(categories[index].color, 10)
              ]),
              radius: radius));
    } else {
      return List.generate(
          categories.length,
          (index) => DoughnutSegmentData(
              value: categories[index].sumInPeriod,
              color: selectedId == categories[index].id
                  ? categories[index].color
                  : Colors.grey,
              gradient: selectedId == categories[index].id
                  ? LinearGradient(colors: [
                      categories[index].color,
                      lighten(categories[index].color, 10)
                    ])
                  : LinearGradient(colors: [Colors.grey, Colors.grey.shade400]),
              radius: radius));
    }
  }
}
