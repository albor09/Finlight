import 'package:bloc/bloc.dart';
import 'package:finance_manager/core/locator.dart';
import 'package:finance_manager/core/utils/constant.dart';
import 'package:finance_manager/data/repositories/userdata_repository.dart';
import 'package:finance_manager/domain/entities/user_data.dart';
import 'package:finance_manager/domain/repositories/userdata_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'userdata_bloc.freezed.dart';

@freezed
class UserDataEvent with _$UserDataEvent {
  const UserDataEvent._();

  const factory UserDataEvent.get() = _GetUserDataEvent;
  const factory UserDataEvent.set({required UserDataEntity userData}) =
      _SetUserDataEvent;
  const factory UserDataEvent.setWith(
      {String? name,
      Currency? currency,
      ThemeMode? themeMode}) = _SetWithUserDataEvent;
}

@freezed
class UserDataState with _$UserDataState {
  const UserDataState._();

  const factory UserDataState.initial() = _InitialUserDataState;
  const factory UserDataState.noData() = _NoDataUserDataState;
  const factory UserDataState.loaded({required UserDataEntity userData}) =
      _LoadedUserDataState;

  UserDataEntity? get getUserData => map(
      initial: (state) => null,
      noData: (state) => null,
      loaded: (state) => state.userData);

  bool get isDataExist =>
      maybeMap(orElse: () => false, loaded: (state) => true);
}

class UserDataBloc extends Bloc<UserDataEvent, UserDataState> {
  UserDataBloc({UserDataRepository? userDataRepository})
      : _userDataRepository =
            userDataRepository ?? locator.get<UserDataRepositoryImp>(),
        super(const UserDataState.initial()) {
    on<UserDataEvent>((event, emit) => event.map(
        get: (event) => _onGetEvent(event, emit),
        set: (event) => _onSetEvent(event, emit),
        setWith: (event) => _onSetWithEvent(event, emit)));
  }

  final UserDataRepository _userDataRepository;

  Future<void> _onGetEvent(_GetUserDataEvent event, emit) async {
    final data = await _userDataRepository.getUserData();
    emit(data != null
        ? UserDataState.loaded(userData: data)
        : const UserDataState.noData());
  }

  Future<void> _onSetEvent(_SetUserDataEvent event, emit) async {
    await _userDataRepository.setUserData(event.userData);
    emit(UserDataState.loaded(userData: event.userData));
  }

  Future<void> _onSetWithEvent(_SetWithUserDataEvent event, emit) async {
    final updated = state.getUserData!.copyWith(
        name: event.name, currency: event.currency, themeMode: event.themeMode);
    await _userDataRepository.setUserData(updated);
    emit(UserDataState.loaded(userData: updated));
  }
}
