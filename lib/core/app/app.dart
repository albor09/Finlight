import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization_loader/easy_localization_loader.dart';
import 'package:finance_manager/core/themes/app_themes.dart';
import 'package:finance_manager/domain/entities/category.dart';
import 'package:finance_manager/ui/bloc/userdata_bloc/userdata_bloc.dart';
import 'package:finance_manager/ui/views/home/bloc/home_cubit.dart';
import 'package:finance_manager/ui/views/home/category_sheet/bloc/core_categories_bloc.dart';
import 'package:finance_manager/ui/views/settings/categories_edit_view/bloc/categories_edit_list_bloc.dart';
import 'package:finance_manager/ui/views/splash_view.dart';
import 'package:finance_manager/ui/views/start/currency_setup_view.dart';
import 'package:finance_manager/ui/views/start/name_setup_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  App({super.key});

  final userDataBloc = UserDataBloc();
  final homeCubit = HomeCubit();

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      assetLoader: YamlAssetLoader(),
      path: 'assets/translation',
      supportedLocales: const [Locale('en', 'US'), Locale('ru', 'RU')],
      saveLocale: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => userDataBloc),
          BlocProvider(create: (context) => homeCubit),
          BlocProvider(create: (context) => EditCategoriesBloc()),
          BlocProvider(
              create: ((context) => CoreCategoriesBloc()
                ..add(CoreCategoriesEvent.loadCategories(
                    dataSelection: homeCubit.state.dataSelection))))
        ],
        child: BlocBuilder<UserDataBloc, UserDataState>(
            builder: (context, userDataState) {
          return AnnotatedRegion(
              value: SystemUiOverlayStyle(
                statusBarColor: Colors.transparent,
                systemNavigationBarColor:
                    userDataState.getUserData?.themeMode == ThemeMode.dark
                        ? Colors.black
                        : Colors.white,
              ),
              child: MaterialApp(
                  debugShowCheckedModeBanner: false,
                  locale: context.locale,
                  supportedLocales: context.supportedLocales,
                  localizationsDelegates: context.localizationDelegates,
                  title: 'Finance manager',
                  darkTheme: AppThemes.darkTheme,
                  theme: AppThemes.lightTheme,
                  themeMode:
                      userDataState.getUserData?.themeMode ?? ThemeMode.dark,
                  home: const SplashLoadingView()));
        }),
      ),
    );
  }
}
