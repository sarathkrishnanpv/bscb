import 'package:app/gen/assets.gen.dart';
import 'package:app/utils/responsive_config.dart';
import 'package:flutter/material.dart';
import 'package:app/utils/themes/app_colors.dart';
import 'package:app/utils/themes/text_theme.dart';
import 'package:app/widgets/global_buttons.dart';

class HomeScreen extends StatelessWidget {


  const HomeScreen({super.key, });

  @override
  Widget build(BuildContext context) {
  final textTheme = Theme.of(context).extension<AppTextTheme>()!;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Home",
                  style: textTheme.appTextBodyTextXlBold,
                ),
              ),
               Center(child: Image.asset(Assets.images.profile.path),),
               Container(
                width: context.screenWidth/2,
                child: secondaryButton(textTheme: textTheme, content:"Create Profile")),
              SizedBox(height: 50), // Add some spacing at the bottom
            ],
          ),
        ),
      ),
    );
  }
}
