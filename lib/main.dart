import 'package:app/providers/password_view_provider.dart';
import 'package:app/providers/splash_provider.dart';
import 'package:app/ui/authentication/signup.dart';
import 'package:app/ui/authentication/splash/splash_screen.dart';
import 'package:app/ui/authentication/welcome.dart';
import 'package:app/utils/themes/app_colors.dart';
import 'package:app/utils/themes/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) {
            final provider = SplashScreenProvider();
            provider.resetSplash(); // Reset splash screen state on app start
            return provider;
          },
        ),
        ChangeNotifierProvider(
          create: (_) => PasswordVisibilityProvider(), // Password visibility provider
        ),
        // Add more providers if needed
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        extensions: <ThemeExtension<dynamic>>[
          AppTextTheme.fallback(),
        ],
        scaffoldBackgroundColor: AppColors.lightwhite,
      ),
      home: Consumer<SplashScreenProvider>(
        builder: (context, splashScreenProvider, child) {
          return splashScreenProvider.isVisible
              ? SplashScreen()
              : WelcomePage(); // Main screen after the splash
        },
      ),
    );
  }
}