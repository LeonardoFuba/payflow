import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_images.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/social_login_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.40,
              color: AppColors.primary,
            ),
            Positioned(
              top: size.height * 0.07,
              left: 0,
              right: 0,
              child: Image.asset(AppImages.person, height: size.height * 0.50),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: size.height * 0.57,
                bottom: 16,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(AppImages.logomini),
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: Text(
                      "Organize seus\nboletos em um\nsó lugar",
                      textAlign: TextAlign.center,
                      style: AppTextStyles.titleHome,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
                    child: SocialLoginButton(
                      onTap: () async {
                        GoogleSignIn _googleSignIn = GoogleSignIn(
                          scopes: [
                            'email',
                          ],
                        );
                        try {
                          final response = await _googleSignIn.signIn();
                          print(response);
                        } catch (error) {
                          print(error);
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
