import 'package:flutter/material.dart';
import 'package:rickandmortyapp/core/router/nav.dart';
import 'package:rickandmortyapp/page/home_screen.dart';
import 'package:rickandmortyapp/ui_kit/layout/default_scaffold.dart';
import 'package:rickandmortyapp/ui_kit/theme/app_colors.dart';
import 'package:rickandmortyapp/ui_kit/theme/typography.dart';
import 'package:rickandmortyapp/ui_kit/button/button.dart';

class WelcomePage extends StatelessWidget {
  static const String path = '/';

  final VoidCallback? onStart;

  const WelcomePage({super.key, this.onStart});

  void _navigateToHome(BuildContext context) {
    if (onStart != null) {
      onStart!();
    } else {
      Go.andReplace(HomeScreen.path);
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return DefaultScaffold(
      showBackButton: false,
      body: Column(
        children: [
          Center(
            child: Image.asset(
              'assets/images/picturewpage.png',
              width: screenwidth * 0.5,
              height: screenheight * 0.5,
            ),
          ),
          Text(
            "Rick and Morty Wiki",
            style: AppTextStyle.cartoonTitle.copyWith(
              fontSize: screenwidth * 0.08,
              color: AppColors.white,
            ),
          ),
          SizedBox(height: screenheight * 0.02),
          Text(
            "Explore the universe of Rick and Morty with our wiki.",
            textAlign: TextAlign.center,
            style: AppTextStyle.cartoonBody.copyWith(
              fontSize: screenwidth * 0.04,
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: screenwidth * 0.05,
                  bottom: screenheight * 0.01,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset(
                      "assets/images/rickhand.png",
                      width: screenwidth * 0.60,
                      height: screenheight * 0.60,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: screenwidth * 0.08,
                        bottom: screenheight * 0.20,
                      ),
                      child: Button.icon(
                        onPressed: () => _navigateToHome(context),
                        icon: Icons.arrow_forward_ios,
                        iconColor: AppColors.background,
                        iconSize: screenwidth * 0.06,
                        backgroundColor: AppColors.primary,
                        showContainer: true,
                        containerPadding: 12,
                        boxShadowColor: AppColors.primary.withValues(
                          alpha: 0.5,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
