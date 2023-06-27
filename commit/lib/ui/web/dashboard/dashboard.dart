import 'package:commit/state/models/challenge.dart';
import 'package:commit/ui/common/google_signin.dart';
import 'package:commit/ui/common/in_progress.dart';
import 'package:commit/ui/common/start_new_placeholder.dart';
import 'package:commit/utils/track_enum.dart';
import 'package:flutter/material.dart';

class WebDashboard extends StatelessWidget {
  const WebDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GoogleSignIn(),
              InProgressWidget(challengeModel: _sample),
              InProgressWidget(challengeModel: _sample),
              InProgressWidget(challengeModel: _sample),
              InProgressWidget(challengeModel: _sample),
              StartNewPlaceholderWidget(track: Track.monthly),
              StartNewPlaceholderWidget(
                track: Track.yearly,
              ),
              StartNewPlaceholderWidget(
                track: Track.custom,
              )
            ],
          ),
        ),
      ),
    );
  }
}

var startedOn = DateTime.now();
var willEndOn = DateTime.now().add(const Duration(days: 100));
ChallengeModel _sample = ChallengeModel('100 Days of Flutter', startedOn,
    willEndOn, [], 0, 'A 100 Days of Flutter Challenge!', false, 100);
