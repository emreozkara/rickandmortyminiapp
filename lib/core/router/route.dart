import 'package:flutter/material.dart';
import 'package:rickandmortyapp/page/character_detail_screen.dart';
import 'package:rickandmortyapp/page/episode_detail_screen.dart';
import 'package:rickandmortyapp/page/home_screen.dart';
import 'package:rickandmortyapp/page/welcome_page.dart';
import 'package:rickandmortyapp/data/models/character/character_model.dart';
import 'package:rickandmortyapp/data/models/episode/episode_model.dart';
import 'package:rickandmortyapp/ui_kit/theme/app_colors.dart';

final class AppRouter {
  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case WelcomePage.path:
        return MaterialPageRoute(builder: (_) => const WelcomePage());
      case HomeScreen.path:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case CharacterDetailScreen.path:
        final character = settings.arguments as CharacterModel;
        return MaterialPageRoute(
          builder: (_) => CharacterDetailScreen(character: character),
        );
      case EpisodeDetailScreen.path:
        final episode = settings.arguments as EpisodeModel;
        return MaterialPageRoute(
          builder: (_) => EpisodeDetailScreen(episode: episode),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            backgroundColor: AppColors.surface,
            body: const Center(child: Text('Page not found')),
          ),
        );
    }
  }
}
