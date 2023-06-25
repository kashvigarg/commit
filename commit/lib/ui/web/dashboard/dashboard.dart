import 'package:commit/constants/app_size.dart';
import 'package:commit/ui/common/start_new_placeholder.dart';
import 'package:commit/utils/track_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WebDashboard extends StatelessWidget {
  const WebDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          StartNewPlaceholder(track: Track.monthly),
          StartNewPlaceholder(
            track: Track.yearly,
          ),
          StartNewPlaceholder(
            track: Track.custom,
          )
        ],
      ),
    );
  }
}
