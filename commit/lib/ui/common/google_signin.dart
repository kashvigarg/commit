import 'package:commit/constants/app_size.dart';
import 'package:commit/constants/app_strings.dart';
import 'package:commit/constants/app_styles.dart';
import 'package:commit/utils/svg_asset.dart';
import 'package:flutter/material.dart';

class GoogleSignIn extends StatelessWidget {
  const GoogleSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        height: AppSize(context: context).height * 0.06,
        width: AppSize(context: context).width * 0.55,
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 238, 238, 238)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
                height: AppSize(context: context).height * 0.026,
                width: AppSize(context: context).height * 0.026,
                child: Image.asset('assets/icons/google.png')),
            AppSize(context: context).horizontalGap(),
            Text(
              AppStrings.googleSignInMsg,
              style: AppStyles.placeholderTextStyle,
              textScaleFactor: 0.9,
            )
          ],
        ),
      ),
    );
  }
}
