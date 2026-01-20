import 'package:flutter/material.dart';
import 'package:rickandmortyapp/core/router/nav.dart';
import 'package:rickandmortyapp/data/models/episode/episode_model.dart';
import 'package:rickandmortyapp/page/episode_detail_screen.dart';
import 'package:rickandmortyapp/ui_kit/theme/app_colors.dart';
import 'package:rickandmortyapp/ui_kit/theme/typography.dart';

class EpisodeTile extends StatelessWidget {
  final EpisodeModel episode;

  const EpisodeTile({super.key, required this.episode});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: AppColors.primary.withValues(alpha: 0.2),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              episode.id,
              style: AppTextStyle.cartoonBody.copyWith(
                color: AppColors.primary,
              ),
            ),
          ),
        ),
        title: Text(
          episode.name,
          style: AppTextStyle.cartoonSmall.copyWith(color: AppColors.white),
        ),
        subtitle: Text(
          episode.episode,
          style: AppTextStyle.cartoonExtraSmall.copyWith(
            color: AppColors.textSecondary,
          ),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: AppColors.primary,
          size: 16,
        ),
        onTap: () {
          Go.to(EpisodeDetailScreen.path, arguments: episode);
        },
      ),
    );
  }
}
