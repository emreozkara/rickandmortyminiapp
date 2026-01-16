import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rickandmortyapp/core/router/app_router.dart';
import 'cubit/character/character_cubit.dart';

void main() {
  runApp(const RickAndMortyApp());
}

class RickAndMortyApp extends StatelessWidget {
  const RickAndMortyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => CharacterCubit())],
      child: MaterialApp.router(
        title: 'Rick and Morty Wiki',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.dark(
            primary: HexColor('#97ce4c'),
            secondary: HexColor('#00b0c8'),
            surface: HexColor('#1a1a2e'),
          ),
          fontFamily: 'cartoon',
        ),
        routerConfig: AppRouter.router,
      ),
    );
  }
}
