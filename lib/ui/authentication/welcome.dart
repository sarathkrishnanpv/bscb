import 'package:app/gen/assets.gen.dart';
import 'package:app/ui/authentication/signin.dart';
import 'package:app/ui/authentication/signup.dart';
import 'package:app/utils/responsive_config.dart';
import 'package:app/utils/themes/app_colors.dart';
import 'package:app/utils/themes/navigation/navigation_utils.dart';
import 'package:app/utils/themes/text_theme.dart';
import 'package:app/widgets/flexible_dash.dart';
import 'package:app/widgets/global_buttons.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).extension<AppTextTheme>()!;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Hero(
                  tag: 'logoHero',
                  child: SizedBox(
                    height: context.screenWidth / 3,
                    width: context.screenWidth / 3,
                    child: Image.asset(Assets.logo.logoPng.path),
                  ),
                ),
              ),
          
               const SizedBox(height: 20),
                Text(
                  "Welcome to bscb",
                  style: textTheme.appTextBodyTextLgBold,
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Culpa pariatur commodo veniam anim eiusmod sit dolor pariatur sit eu exercitation aliquip.",
                  style: textTheme.appTextBodyTextLgRegular,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: InkWell(
                    onTap: () {
                      RouterUtils.pushWithSlideTransition(context, const SigninPage());
                    },
                    child: PrimaryButton(
                      textTheme: textTheme,
                      content: "Signin",
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    RouterUtils.pushWithSlideTransition(context, const SignupPage());
                  },
                  child: SizedBox(
                    width: double.infinity,
                    child: secondaryButton(
                      textTheme: textTheme,
                      content: 'Signup',
                    ),
                  ),
                ),
                // FlexibleDash(text: "Or login with")
                
            ],
          ),
        ),
      ),
    );
  }
}
