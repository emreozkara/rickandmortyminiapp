import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rickandmortyapp/data/models/character/character_model.dart';
import 'package:rickandmortyapp/data/models/episode/episode_model.dart';
import 'package:rickandmortyapp/providers/character_detail_provider.dart';
import 'package:rickandmortyapp/ui_kit/layout/default_scaffold.dart';
import 'package:rickandmortyapp/ui_kit/theme/app_colors.dart';
import 'package:rickandmortyapp/ui_kit/theme/typography.dart';
import 'package:rickandmortyapp/widgets/detail_widgets.dart';
import 'package:rickandmortyapp/widgets/episode_tile.dart';

class CharacterDetailScreen extends StatelessWidget {
  static const String path = '/character';

  final CharacterModel character;
  const CharacterDetailScreen({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CharacterDetailProvider()..loadCharacterDetail(character),
      child: _CharacterDetailView(),
    );
  }
}

class _CharacterDetailView extends StatelessWidget {
  _CharacterDetailView();

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      backgroundColor: AppColors.background,
      showBackButton: false,
      body: Consumer<CharacterDetailProvider>(
        builder: (context, provider, child) {
          final character = provider.character;
          if (character == null) return const SizedBox.shrink();
          return CustomScrollView(
            slivers: [
              _buildSliverAppBar(context, character),
              SliverToBoxAdapter(child: _buildCharacterInfo(character)),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    'Episodes (${provider.episodes.length})',
                    style: AppTextStyle.cartoonSubtitle,
                  ),
                ),
              ),
              if (provider.isLoading)
                const SliverToBoxAdapter(
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(32),
                      child: CircularProgressIndicator(),
                    ),
                  ),
                )
              else
                _buildEpisodesList(provider.episodes),
            ],
          );
        },
      ),
    );
  }

  Widget _buildSliverAppBar(BuildContext context, CharacterModel character) {
    return SliverAppBar(
      expandedHeight: 300,
      pinned: false,
      floating: false,
      snap: false,
      backgroundColor: AppColors.surface,
      leading: IconButton(
        icon: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
            color: Colors.black38,
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.arrow_back, color: AppColors.white),
        ),
        onPressed: () => Navigator.pop(context),
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Hero(
          tag: 'character_${character.id}',
          child: Image.network(character.image, fit: BoxFit.cover),
        ),
      ),
    );
  }

  Widget _buildCharacterInfo(CharacterModel character) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            character.name,
            style: AppTextStyle.cartoonTitle.copyWith(fontSize: 28),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              InfoChip(
                icon: Icons.favorite,
                label: character.status,
                color: _getStatusColor(character.status),
              ),
              const SizedBox(width: 8),
              InfoChip(
                icon: Icons.pets,
                label: character.species,
                color: AppColors.secondary,
              ),
              const SizedBox(width: 8),
              InfoChip(
                icon: Icons.person,
                label: character.gender,
                color: AppColors.cuperRed,
              ),
            ],
          ),
          const SizedBox(height: 16),
          InfoRow(label: 'Origin', value: character.origin.name),
          const SizedBox(height: 8),
          InfoRow(label: 'Location', value: character.location.name),
        ],
      ),
    );
  }

  Widget _buildEpisodesList(List<EpisodeModel> episodes) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => EpisodeTile(episode: episodes[index]),
        childCount: episodes.length,
      ),
    );
  }

  Color _getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case 'alive':
        return AppColors.alive;
      case 'dead':
        return AppColors.dead;
      default:
        return AppColors.unknown;
    }
  }
}
