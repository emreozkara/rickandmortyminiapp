import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rickandmortyapp/core/router/nav.dart';
import 'package:rickandmortyapp/page/character_detail_screen.dart';
import 'package:rickandmortyapp/ui_kit/layout/default_scaffold.dart';
import 'package:rickandmortyapp/ui_kit/theme/app_colors.dart';
import 'package:rickandmortyapp/ui_kit/theme/typography.dart';
import 'package:rickandmortyapp/ui_kit/input/input.dart';
import '../cubit/character/character_cubit.dart';
import '../widgets/character_card.dart';

class HomeScreen extends StatefulWidget {
  static const String path = '/home';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _searchController = TextEditingController();
  Timer? _debounceTimer;

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      if (mounted) context.read<CharacterCubit>().fetchCharacters();
    });
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _searchController.dispose();
    _debounceTimer?.cancel();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      Future.microtask(() {
        if (mounted) context.read<CharacterCubit>().fetchMoreCharacters();
      });
    }
  }

  void _onSearch(String query) {
    _debounceTimer?.cancel();
    _debounceTimer = Timer(const Duration(milliseconds: 500), () {
      Future.microtask(() {
        if (mounted) context.read<CharacterCubit>().searchCharacters(query);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      title: 'Characters',
      showBackButton: false,
      useCollapsingAppBar: true,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Input.text(
              controller: _searchController,
              hintText: 'Search characters...',
              prefixIcon: Icons.search,
              textColor: AppColors.white,
              backgroundColor: AppColors.surface,
              borderColor: AppColors.surface,
              borderRadius: 12,
              onChanged: (value) {
                setState(() {});
                _onSearch(value);
              },
              showClearButton: true,
              onClear: () {
                setState(() {});
                _searchController.clear();
                context.read<CharacterCubit>().clearSearch();
              },
            ),
          ),
          Expanded(
            child: BlocBuilder<CharacterCubit, CharacterState>(
              builder: (context, state) {
                if (state is CharacterLoading) {
                  return Center(
                    child: CircularProgressIndicator(color: AppColors.primary),
                  );
                }

                if (state is CharacterError) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search_off,
                          size: 64,
                          color: AppColors.primary,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          state.message,
                          style: AppTextStyle.cartoonBody,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 16),
                      ],
                    ),
                  );
                }

                if (state is CharacterLoaded) {
                  return RefreshIndicator(
                    onRefresh: () =>
                        context.read<CharacterCubit>().refreshCharacters(),
                    color: AppColors.primary,
                    child: GridView.builder(
                      controller: _scrollController,
                      padding: const EdgeInsets.all(16),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.75,
                            crossAxisSpacing: 16,
                            mainAxisSpacing: 16,
                          ),
                      itemCount:
                          state.characters.length + (state.hasMore ? 1 : 0),
                      itemBuilder: (context, index) {
                        if (index == state.characters.length) {
                          return Center(
                            child: CircularProgressIndicator(
                              color: AppColors.primary,
                            ),
                          );
                        }
                        final character = state.characters[index];
                        return CharacterCard(
                          character: character,
                          onTap: () {
                            Go.to(
                              CharacterDetailScreen.path,
                              arguments: character,
                            );
                          },
                        );
                      },
                    ),
                  );
                }

                return const SizedBox.shrink();
              },
            ),
          ),
        ],
      ),
    );
  }
}
