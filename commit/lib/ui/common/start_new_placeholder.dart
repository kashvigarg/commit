import 'package:commit/constants/app_size.dart';
import 'package:commit/constants/app_styles.dart';
import 'package:commit/utils/track_helper.dart';
import 'package:flutter/material.dart';

class StartNewPlaceholderWidget extends StatelessWidget {
  const StartNewPlaceholderWidget({super.key, required this.track});

  final Track track;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: AppSize(context: context).height * 0.15,
        width: AppSize(context: context).width * 0.5,
        decoration: BoxDecoration(
          border: Border.all(width: 0.5),
          borderRadius: BorderRadius.circular(15),
          image: track.asset,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text(
                  track.title,
                  softWrap: true,
                  style: AppStyles.placeholderTextStyle,
                  textAlign: TextAlign.center,
                ),
                AppSize(context: context).verticalGap(),
                const Icon(
                  Icons.add_circle,
                  color: Colors.black,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
