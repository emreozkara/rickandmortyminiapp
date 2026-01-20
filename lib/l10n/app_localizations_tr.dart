// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appTitle => 'Rick and Morty Wiki';

  @override
  String get characters => 'Karakterler';

  @override
  String get episodes => 'Bölümler';

  @override
  String get searchCharacters => 'Karakter ara...';

  @override
  String get origin => 'Köken';

  @override
  String get location => 'Konum';

  @override
  String episodesInThisCharacter(int count) {
    return 'Bölümler ($count)';
  }

  @override
  String charactersInThisEpisode(int count) {
    return 'Bu bölümdeki karakterler ($count)';
  }

  @override
  String get alive => 'Canlı';

  @override
  String get dead => 'Ölü';

  @override
  String get unknown => 'Bilinmiyor';

  @override
  String get welcomeTitle => 'Rick and Morty Wiki';

  @override
  String get welcomeSubtitle =>
      'Rick and Morty evrenini wiki\'miz ile keşfedin.';

  @override
  String get noResults => 'Sonuç bulunamadı';

  @override
  String get retry => 'Tekrar Dene';

  @override
  String get loading => 'Yükleniyor...';

  @override
  String get error => 'Bir hata oluştu';
}
