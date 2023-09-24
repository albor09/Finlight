part of 'home_cubit.dart';

enum BottomSheetState { categories, add, detailedCategory }

class HomeState extends Equatable {
  const HomeState(
      {required this.selectedId,
      required this.dataSelection,
      required this.sheetState});

  final int selectedId;
  final DataSelection dataSelection;
  final BottomSheetState sheetState;

  factory HomeState.init() {
    return HomeState(
      selectedId: -1,
      dataSelection: DataSelection(
          range: CDateRange.currentMonth(),
          categoryType: TransactionType.expense),
      sheetState: BottomSheetState.categories,
    );
  }

  @override
  List<Object> get props =>
      [selectedId, sheetState, dataSelection.range, dataSelection.categoryType];

  HomeState copyWith({
    int? selectedId,
    DataSelection? dataSelection,
    BottomSheetState? sheetState,
  }) {
    return HomeState(
      selectedId: selectedId ?? this.selectedId,
      dataSelection: dataSelection ?? this.dataSelection,
      sheetState: sheetState ?? this.sheetState,
    );
  }
}
