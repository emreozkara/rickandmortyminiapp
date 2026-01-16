import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hexcolor/hexcolor.dart';

class WelcomePage extends StatelessWidget {
  final VoidCallback? onStart;

  const WelcomePage({super.key, this.onStart});

  void _navigateToHome(BuildContext context) {
    if (onStart != null) {
      onStart!();
    } else {
      context.go('/home');
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
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
            style: TextStyle(
              fontFamily: "cartoon",
              fontSize: screenwidth * 0.08,
              color: HexColor("#ffffff"),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: screenheight * 0.02),
          Text(
            "Explore the universe of Rick and Morty with our wiki.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "cartoon",
              fontSize: screenwidth * 0.04,
              color: HexColor("#ffffff"),
              fontWeight: FontWeight.w400,
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
                      child: IconButton(
                        onPressed: () => _navigateToHome(context),
                        icon: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: HexColor('#97ce4c'),
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: HexColor(
                                  '#97ce4c',
                                ).withValues(alpha: 0.5),
                                blurRadius: 15,
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: screenwidth * 0.06,
                            color: HexColor('#1a1a2e'),
                          ),
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
