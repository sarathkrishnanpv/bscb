import 'package:app/gen/assets.gen.dart';
import 'package:app/models/user_model.dart';
import 'package:app/providers/password_view_provider.dart';
import 'package:app/providers/validator_provider.dart';
import 'package:app/ui/authentication/otp_screen.dart';
import 'package:app/utils/themes/app_colors.dart';
import 'package:app/utils/themes/text_theme.dart';
import 'package:app/widgets/global_buttons.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:provider/provider.dart';

import 'package:app/gen/assets.gen.dart';
import 'package:app/models/user_model.dart';
import 'package:app/providers/password_view_provider.dart';
import 'package:app/providers/validator_provider.dart';
import 'package:app/ui/authentication/otp_screen.dart';
import 'package:app/utils/themes/app_colors.dart';
import 'package:app/utils/themes/text_theme.dart';
import 'package:app/widgets/global_buttons.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:provider/provider.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SignupFormProvider(),
      child: SignupForm(),
    );
  }
}

class SignupForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).extension<AppTextTheme>()!;
    final formProvider = Provider.of<SignupFormProvider>(context);
    
    final phoneController = TextEditingController();
    final passwordController = TextEditingController();
    final confirmPasswordController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                Center(
                  child: Container(
                    height: 120, width: 120,
                    child: Image.asset(Assets.images.verification.path),
                  ),
                ),
                Text(
                  "Signup",
                  style: textTheme.appTextBodyTextXlBold,
                ),
                const SizedBox(height: 8),
                Text(
                  "Create an account.",
                  style: textTheme.appTextBodyTextLgRegular,
                ),
                const SizedBox(height: 20),
                PhoneNumberField(controller: phoneController),
                ChangeNotifierProvider(
                  create: (_) => PasswordVisibilityProvider(),
                  child: PasswordField(controller: passwordController, label: "Password"),
                ),
                const SizedBox(height: 20),
                ChangeNotifierProvider(
                  create: (_) => PasswordVisibilityProvider(),
                  child: PasswordField(controller: confirmPasswordController, label: "Confirm Password"),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: double.infinity,
                  child: InkWell(
                    onTap: () {
                      if (formProvider.validateForm(
                        phoneController.text,
                        passwordController.text,
                        confirmPasswordController.text
                      )) {
                        final user = UserModel(
                          phoneNumber: phoneController.text,
                          password: passwordController.text,
                        );
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OtpScreen(
                              textTheme: textTheme,
                              user: user,
                            ),
                          ),
                        );
                      } else {
                        // Handle validation errors
                      }
                    },
                    child: PrimaryButton(
                      textTheme: textTheme,
                      content: "Signup",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class PhoneNumberField extends StatelessWidget {
  final TextEditingController controller;

  const PhoneNumberField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).extension<AppTextTheme>()!;
    
    return IntlPhoneField(
      controller: controller,
      initialCountryCode: 'IN', // Setting the default country to India
      decoration: InputDecoration(
        labelText: 'Phone Number',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        helperText: '', // Ensure helperText is blank
        counterText: '', // This should hide the counter
      ),
      onChanged: (phone) {
        // No need to set value here, it's handled by the controller
      },
      style: textTheme.appTextBodyTextLgRegular,
    );
  }
}

class PasswordField extends StatelessWidget {
  final TextEditingController controller;
  final String label;

  const PasswordField({super.key, required this.controller, required this.label});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).extension<AppTextTheme>()!;
    final formProvider = Provider.of<SignupFormProvider>(context, listen: false);

    return Consumer<PasswordVisibilityProvider>(
      builder: (context, provider, child) {
        return TextFormField(
          controller: controller,
          obscureText: !provider.isVisible,
          onChanged: (value) {
            // Update formProvider with new value if needed
          },
          decoration: InputDecoration(
            labelText: label,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            suffixIcon: IconButton(
              icon: Icon(
                provider.isVisible ? Icons.visibility : Icons.visibility_off,
              ),
              onPressed: provider.toggleVisibility,
            ),
          ),
          style: textTheme.appTextBodyTextLgRegular,
        );
      },
    );
  }
}
