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
        // decoration: const BoxDecoration(
        //     image: DecorationImage(
        //         opacity: 0.78,
        //         image: AssetImage('assets/images/geometric.jpg'),
        //         fit: BoxFit.fitHeight)),
        color: Colors.red,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text(
                  track.title,
                  style: AppStyles.placeholderTextStyle,
                  textAlign: TextAlign.center,
                ),
                AppSize(context: context).verticalGap(),
                const Icon(
                  Icons.add_circle,
                  color: Colors.white60,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
