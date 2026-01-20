import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rickandmortyapp/data/models/character/character_model.dart';
import 'package:rickandmortyapp/data/models/episode/episode_model.dart';
import 'package:rickandmortyapp/providers/episode_detail_provider.dart';
import 'package:rickandmortyapp/ui_kit/layout/default_scaffold.dart';
import 'package:rickandmortyapp/ui_kit/theme/app_colors.dart';
import 'package:rickandmortyapp/ui_kit/theme/typography.dart';
import 'package:rickandmortyapp/widgets/character_mini_card.dart';
import 'package:rickandmortyapp/widgets/detail_widgets.dart';

class EpisodeDetailScreen extends StatelessWidget {
  static const String path = '/episode';

  final EpisodeModel episode;

  const EpisodeDetailScreen({super.key, required this.episode});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => EpisodeDetailProvider()..loadEpisodeDetail(episode),
      child: _EpisodeDetailView(),
    );
  }
}

class _EpisodeDetailView extends StatelessWidget {
  _EpisodeDetailView();

  @override
  Widget build(BuildContext context) {
    return Consumer<EpisodeDetailProvider>(
      builder: (context, provider, child) {
        final episode = provider.episode;

        return DefaultScaffold(
          title: episode?.episode ?? '',
          showBackButton: true,
          useCollapsingAppBar: true,
          body: episode == null
              ? const SizedBox.shrink()
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EpisodeHeader(
                      episodeCode: episode.episode,
                      episodeName: episode.name,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'Characters (${provider.characters.length})',
                        style: AppTextStyle.cartoonSmall.copyWith(
                          color: AppColors.primary,
                        ),
                      ),
                    ),
                    Expanded(
                      child: provider.isLoading
                          ? const Center(child: CircularProgressIndicator())
                          : provider.error != null
                          ? Center(
                              child: Text(
                                provider.error!,
                                style: AppTextStyle.cartoonBody,
                              ),
                            )
                          : _buildCharactersGrid(provider.characters),
                    ),
                  ],
                ),
        );
      },
    );
  }

  Widget _buildCharactersGrid(List<CharacterModel> characters) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 0.75,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      itemCount: characters.length,
      itemBuilder: (context, index) {
        return CharacterMiniCard(character: characters[index]);
      },
    );
  }
}
