import 'package:go_router/go_router.dart';
import 'package:rickandmortyapp/data/models/character/character_model.dart';
import 'package:rickandmortyapp/data/models/episode/episode_model.dart';
import 'package:rickandmortyapp/page/welcome_page.dart';
import 'package:rickandmortyapp/page/home_screen.dart';
import 'package:rickandmortyapp/page/character_detail_screen.dart';
import 'package:rickandmortyapp/page/episode_detail_screen.dart';

class AppRouter {
  AppRouter._();

  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: 'welcome',
        builder: (context, state) =>
            WelcomePage(onStart: () => context.go('/home')),
      ),
      GoRoute(
        path: '/home',
        name: 'home',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/character',
        name: 'character-detail',
        builder: (context, state) {
          final extra = state.extra;
          final character = extra is CharacterModel
              ? extra
              : CharacterModel.fromJson(extra as Map<String, dynamic>);
          return CharacterDetailScreen(character: character);
        },
      ),
      GoRoute(
        path: '/episode',
        name: 'episode-detail',
        builder: (context, state) {
          final extra = state.extra;
          final episode = extra is EpisodeModel
              ? extra
              : EpisodeModel.fromJson(extra as Map<String, dynamic>);
          return EpisodeDetailScreen(episode: episode);
        },
      ),
    ],
  );
}
