import 'package:app/gen/assets.gen.dart';
import 'package:app/ui/home/home_screen.dart';
import 'package:app/widgets/global_buttons.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:smart_auth/smart_auth.dart';
import 'package:app/utils/themes/app_colors.dart';
import 'package:app/utils/themes/text_theme.dart';

class OtpScreen extends StatefulWidget {
  final AppTextTheme textTheme;

  const OtpScreen({super.key, required  this.textTheme});

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  late final SmsRetriever smsRetriever;
  late final TextEditingController pinController;
  late final FocusNode focusNode;
  late final GlobalKey<FormState> formKey;

  @override
  void initState() {
    super.initState();
    formKey = GlobalKey<FormState>();
    pinController = TextEditingController();
    focusNode = FocusNode();

    smsRetriever = SmsRetrieverImpl(SmartAuth());
  }

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    const focusedBorderColor = AppColors.appGold;
    const fillColor = Color.fromRGBO(243, 246, 249, 0);
    const borderColor = AppColors.primary;

    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: borderColor),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
                
            children: [
              Column(
                
                children: [
                  Center(child: Image.asset(Assets.images.otp.path),),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Verify Mobile Number",
                      style: widget.textTheme.appTextBodyTextXlBold,             
                       textAlign: TextAlign.left,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Please enter the OTP sent to your phone number to continue.",
                    style: widget.textTheme.appTextBodyTextBaseMedium!.copyWith(color: AppColors.appGold),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 40,),
                  Column(
                    children: [
                      Center(
                        child: Form(
                          key: formKey,
                          child: Directionality(
                            textDirection: TextDirection.ltr,
                            child: Pinput(
                              smsRetriever: smsRetriever,
                              controller: pinController,
                              focusNode: focusNode,
                              defaultPinTheme: defaultPinTheme,
                              separatorBuilder: (index) => const SizedBox(width: 8),
                              validator: (value) {
                                return value == '2222' ? null : 'Pin is incorrect';
                              },
                              hapticFeedbackType: HapticFeedbackType.lightImpact,
                              onCompleted: (pin) {
                                debugPrint('onCompleted: $pin');
                              },
                              onChanged: (value) {
                                debugPrint('onChanged: $value');
                              },
                              
                              cursor: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 9),
                                    width: 22,
                                    height: 1,
                                    color: focusedBorderColor,
                                  ),
                                ],
                              ),
                              focusedPinTheme: defaultPinTheme.copyWith(
                                decoration: defaultPinTheme.decoration!.copyWith(
                                  borderRadius: BorderRadius.circular(18),
                                  border: Border.all(color: focusedBorderColor),
                                ),
                              ),
                              submittedPinTheme: defaultPinTheme.copyWith(
                                decoration: defaultPinTheme.decoration!.copyWith(
                                  color: fillColor,
                                  borderRadius: BorderRadius.circular(19),
                                  border: Border.all(color: focusedBorderColor),
                                ),
                              ),
                              errorPinTheme: defaultPinTheme.copyBorderWith(
                                border: Border.all(color: Colors.redAccent),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ), ],
              ),
                  
                  Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          },
                          child: PrimaryButton(
                            textTheme:widget.textTheme,
                            content: "Verify",
                          ),
                        ),
                      ),
                    ],
                  ),
               
            ],
          ),
        ),
      ),
    );
  }
}



class SmsRetrieverImpl implements SmsRetriever {
  const SmsRetrieverImpl(this.smartAuth);

  final SmartAuth smartAuth;

  @override
  Future<void> dispose() {
    return smartAuth.removeSmsListener();
  }

  @override
  Future<String?> getSmsCode() async {
    final signature = await smartAuth.getAppSignature();
    debugPrint('App Signature: $signature');
    final res = await smartAuth.getSmsCode(useUserConsentApi: true);
    if (res.succeed && res.codeFound) {
      return res.code!;
    }
    return null;
  }

  @override
  bool get listenForMultipleSms => false;
}
