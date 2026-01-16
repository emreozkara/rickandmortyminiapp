import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:rickandmortyapp/data/models/character/character_model.dart';
import 'package:rickandmortyapp/data/models/episode/episode_model.dart';
import 'package:rickandmortyapp/providers/episode_detail_provider.dart';
import 'package:rickandmortyapp/widgets/character_mini_card.dart';
import 'package:rickandmortyapp/widgets/detail_widgets.dart';

class EpisodeDetailScreen extends StatelessWidget {
  final EpisodeModel episode;

  const EpisodeDetailScreen({super.key, required this.episode});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => EpisodeDetailProvider()..loadEpisodeDetail(episode),
      child: const _EpisodeDetailView(),
    );
  }
}

class _EpisodeDetailView extends StatelessWidget {
  const _EpisodeDetailView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#1a1a2e'),
      appBar: AppBar(
        backgroundColor: HexColor('#16213e'),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Consumer<EpisodeDetailProvider>(
          builder: (context, provider, child) {
            return Text(
              provider.episode?.episode ?? '',
              style: TextStyle(
                fontFamily: 'cartoon',
                color: HexColor('#97ce4c'),
              ),
            );
          },
        ),
        centerTitle: true,
      ),
      body: Consumer<EpisodeDetailProvider>(
        builder: (context, provider, child) {
          final episode = provider.episode;
          if (episode == null) return const SizedBox.shrink();

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EpisodeHeader(
                episodeCode: episode.episode,
                episodeName: episode.name,
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  'Characters in this episode (${provider.characters.length})',
                  style: TextStyle(
                    fontFamily: 'cartoon',
                    fontSize: 18,
                    color: HexColor('#97ce4c'),
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
                          style: const TextStyle(color: Colors.white),
                        ),
                      )
                    : _buildCharactersGrid(provider.characters),
              ),
            ],
          );
        },
      ),
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
