// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Rick and Morty Wiki';

  @override
  String get characters => 'Characters';

  @override
  String get episodes => 'Episodes';

  @override
  String get searchCharacters => 'Search characters...';

  @override
  String get origin => 'Origin';

  @override
  String get location => 'Location';

  @override
  String episodesInThisCharacter(int count) {
    return 'Episodes ($count)';
  }

  @override
  String charactersInThisEpisode(int count) {
    return 'Characters in this episode ($count)';
  }

  @override
  String get alive => 'Alive';

  @override
  String get dead => 'Dead';

  @override
  String get unknown => 'Unknown';

  @override
  String get welcomeTitle => 'Rick and Morty Wiki';

  @override
  String get welcomeSubtitle =>
      'Explore the universe of Rick and Morty with our wiki.';

  @override
  String get noResults => 'No results found';

  @override
  String get retry => 'Retry';

  @override
  String get loading => 'Loading...';

  @override
  String get error => 'An error occurred';
}
