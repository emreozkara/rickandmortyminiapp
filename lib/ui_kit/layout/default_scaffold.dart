import 'package:flutter/material.dart';
import 'package:rickandmortyapp/ui_kit/theme/app_colors.dart';
import 'package:rickandmortyapp/ui_kit/theme/typography.dart';

class DefaultScaffold extends StatelessWidget {
  const DefaultScaffold({
    super.key,
    this.title,
    this.body,
    this.scaffoldKey,
    this.leading,
    this.backgroundColor,
    this.drawer,
    this.floatingActionButton,
    this.onBackPressed,
    this.actions,
    this.showBackButton = true,
    this.centerTitle = true,
    this.titleStyle,
    this.useCollapsingAppBar = false,
    this.expandedHeight = 56.0,
  });

  final GlobalKey<ScaffoldState>? scaffoldKey;
  final String? title;
  final Widget? body;
  final Widget? leading;
  final Widget? drawer;
  final Widget? floatingActionButton;
  final VoidCallback? onBackPressed;
  final Color? backgroundColor;
  final List<Widget>? actions;
  final bool showBackButton;
  final bool centerTitle;
  final TextStyle? titleStyle;
  final bool useCollapsingAppBar;
  final double expandedHeight;

  @override
  Widget build(BuildContext context) {
    if (useCollapsingAppBar && title != null) {
      return Scaffold(
        key: scaffoldKey,
        drawer: drawer,
        backgroundColor: AppColors.background,
        floatingActionButton: floatingActionButton,
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                floating: true,
                snap: true,
                pinned: false,
                expandedHeight: expandedHeight,
                backgroundColor: AppColors.background,
                elevation: 0,
                actions: actions,
                leading: showBackButton
                    ? (leading ??
                          IconButton(
                            icon: const Icon(
                              Icons.arrow_back,
                              color: AppColors.white,
                            ),
                            onPressed: () {
                              if (onBackPressed != null) {
                                onBackPressed!();
                              } else {
                                Navigator.of(context).pop();
                              }
                            },
                          ))
                    : leading,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: centerTitle,
                  title: Text(
                    title!,
                    style: titleStyle ?? AppTextStyle.cartoonTitle,
                  ),
                  titlePadding: const EdgeInsets.only(left: 16, bottom: 16),
                ),
              ),
            ];
          },
          body: body ?? const SizedBox.shrink(),
        ),
      );
    }

    return Scaffold(
      key: scaffoldKey,
      drawer: drawer,
      backgroundColor: AppColors.background,
      floatingActionButton: floatingActionButton,
      appBar: title != null
          ? AppBar(
              actions: actions,
              backgroundColor: AppColors.background,
              elevation: 0,
              centerTitle: centerTitle,
              title: Text(
                title!,
                style: titleStyle ?? AppTextStyle.cartoonTitle,
              ),
              leading: showBackButton
                  ? (leading ??
                        IconButton(
                          icon: const Icon(
                            Icons.arrow_back,
                            color: AppColors.white,
                          ),
                          onPressed: () {
                            if (onBackPressed != null) {
                              onBackPressed!();
                            } else {
                              Navigator.of(context).pop();
                            }
                          },
                        ))
                  : leading,
            )
          : null,
      body: body,
    );
  }
}
