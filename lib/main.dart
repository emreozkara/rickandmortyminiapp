import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:rickandmortyapp/core/observer/bloc_observer.dart';
import 'package:rickandmortyapp/core/router/route.dart';
import 'package:rickandmortyapp/l10n/app_localizations.dart';
import 'package:rickandmortyapp/page/welcome_page.dart';
import 'package:rickandmortyapp/ui_kit/theme/app_colors.dart';
import 'cubit/character/character_cubit.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

void main() {
  Bloc.observer = AppBlocObserver();
  runApp(const RickAndMortyApp());
}

class RickAndMortyApp extends StatelessWidget {
  const RickAndMortyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => CharacterCubit())],
      child: MaterialApp(
        title: 'Rick and Morty Wiki',
        debugShowCheckedModeBanner: false,
        navigatorKey: rootNavigatorKey,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [Locale('en'), Locale('tr')],
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.dark(
            primary: AppColors.primary,
            secondary: AppColors.secondary,
            surface: AppColors.surface,
          ),
          fontFamily: 'cartoon',
        ),
        initialRoute: WelcomePage.path,
        onGenerateRoute: AppRouter.onGenerateRoute,
      ),
    );
  }
}
