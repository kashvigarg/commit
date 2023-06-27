import 'package:commit/constants/app_colors.dart';
import 'package:commit/constants/app_size.dart';
import 'package:commit/constants/app_styles.dart';
import 'package:commit/state/models/challenge.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class InProgressWidget extends StatelessWidget {
  const InProgressWidget({super.key, required this.challengeModel});

  final ChallengeModel challengeModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(alignment: Alignment.center, children: [
                  Container(
                    height: AppSize(context: context).height * 0.15,
                    width: AppSize(context: context).width * 0.4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 0.5),
                        color: AppColors.pastelColors[
                            Random().nextInt(AppColors.totalColors)]),
                  ),
                  indicator
                ]),
                AppSize(context: context).verticalGap(),
                Text(
                  challengeModel.name,
                  style: AppStyles.inProgressTextStyle,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

var indicator = const CircularProgressIndicator(
  strokeCap: StrokeCap.butt,
  value: 0.7,
  strokeWidth: 16,
  color: Colors.green,
  backgroundColor: Color.fromARGB(255, 212, 235, 198),
);
