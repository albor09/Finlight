import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:finance_manager/domain/entities/data_selection.dart';
import 'package:finance_manager/domain/entities/date_range.dart';
import 'package:finance_manager/domain/entities/transaction.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState.init());

  void setSelected(int id) {
    emit(state.copyWith(selectedId: id));
  }

  void setTimeInterval(CDateRange range) {
    emit(state.copyWith(
        dataSelection: state.dataSelection.copyWith(range: range)));
  }

  void setSheetState(BottomSheetState sheetState) {
    emit(state.copyWith(sheetState: sheetState));
  }

  void switchCategoryType() {
    emit(state.copyWith(
        dataSelection: state.dataSelection.copyWith(
            categoryType:
                state.dataSelection.categoryType == TransactionType.expense
                    ? TransactionType.income
                    : TransactionType.expense)));
  }
}
