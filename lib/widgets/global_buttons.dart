
import 'package:app/utils/themes/app_colors.dart';
import 'package:app/utils/themes/text_theme.dart';
import 'package:flutter/material.dart';

//primary color button
class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.textTheme,
    required this.content,
  });

  final AppTextTheme textTheme;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.primary,
        
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.0), // Adds padding to the button
        child: Text(
          content,
          style: textTheme.appTextBodyTextXlBold!.copyWith(color: AppColors.white),
          textAlign: TextAlign.center, // Centers the text within the button
        ),
      ),
    );
  }
}


class secondaryButton extends StatelessWidget {
  const secondaryButton({
    super.key,
    required this.textTheme,
    required this.content,
  });

  final AppTextTheme textTheme;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
           
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.appGold,width: 2)
            
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0), // Adds padding to the button
            child: Text(
              content,
              style: textTheme.appTextBodyTextXlBold!.copyWith(color: AppColors.appGold),
              textAlign: TextAlign.center, // Centers the text within the button
            ),
          ),
        );
  }
}
