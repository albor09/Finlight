import 'package:finance_manager/ui/bloc/userdata_bloc/userdata_bloc.dart';
import 'package:finance_manager/ui/views/home/home_view.dart';
import 'package:finance_manager/ui/views/start/start_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:showcaseview/showcaseview.dart';

class SplashLoadingView extends StatefulWidget {
  const SplashLoadingView({super.key});

  @override
  State<SplashLoadingView> createState() => _SplashLoadingViewState();
}

class _SplashLoadingViewState extends State<SplashLoadingView> {
  @override
  void initState() {
    context.read<UserDataBloc>().add(UserDataEvent.get());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<UserDataBloc, UserDataState>(
        listener: (context, state) {
          if (!state.isDataExist) {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => const StartView()),
                (r) => false);
          } else {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) {
              return ShowCaseWidget(
                  enableShowcase: false,
                  builder: Builder(builder: (context) => const HomeView()));
            }), (r) => false);
          }
        },
        child: Container(),
      ),
    );
  }
}
