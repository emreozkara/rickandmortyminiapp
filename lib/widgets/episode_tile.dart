import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rickandmortyapp/data/models/episode/episode_model.dart';

class EpisodeTile extends StatelessWidget {
  final EpisodeModel episode;

  const EpisodeTile({super.key, required this.episode});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        color: HexColor('#16213e'),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: HexColor('#97ce4c').withValues(alpha: 0.2),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              episode.id,
              style: TextStyle(
                fontFamily: 'cartoon',
                fontSize: 16,
                color: HexColor('#97ce4c'),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        title: Text(
          episode.name,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          episode.episode,
          style: const TextStyle(color: Colors.white54),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: HexColor('#97ce4c'),
          size: 16,
        ),
        onTap: () {
          context.push('/episode', extra: episode);
        },
      ),
    );
  }
}
