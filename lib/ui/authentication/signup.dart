import 'package:app/gen/assets.gen.dart';
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
                 Center(child: Container(
                  height: 120,width: 120,
                  child: Image.asset(Assets.images.verification.path)),),
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
                
                const PhoneNumberField(),
              
                ChangeNotifierProvider(
                  create: (_) => PasswordVisibilityProvider(),
                  child: const PasswordField(label: "Password"),
                ),
                const SizedBox(height: 20),
                ChangeNotifierProvider(
                  create: (_) => PasswordVisibilityProvider(),
                  child: const PasswordField(label: "Confirm Password"),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: double.infinity,
                  child: InkWell(
                    onTap: () {
            
                       Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>  OtpScreen(textTheme : textTheme),
                          ),
                        );
                      // final formProvider = Provider.of<SignupFormProvider>(context, listen: false);
                      // if (formProvider.validateForm()) {
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => const OtpScreen(),
                      //     ),
                      //   );
                      // }
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
  const PhoneNumberField({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).extension<AppTextTheme>()!;
    final formProvider = Provider.of<SignupFormProvider>(context, listen: false);

    return IntlPhoneField(
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
        formProvider.setPhoneNumber(phone.completeNumber);
      },
      style: textTheme.appTextBodyTextLgRegular,
    );
  }
}

class PasswordField extends StatelessWidget {
  const PasswordField({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).extension<AppTextTheme>()!;
    final formProvider = Provider.of<SignupFormProvider>(context, listen: false);

    return Consumer<PasswordVisibilityProvider>(
      builder: (context, provider, child) {
        return TextFormField(
          obscureText: !provider.isVisible,
          onChanged: (value) {
            formProvider.setPassword(value);
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
