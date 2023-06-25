import 'package:flutter/material.dart';

class AppSize {
  AppSize({required this.context});

  BuildContext context;

  verticalGap() => SizedBox(
        height: MediaQuery.of(context).size.height * 0.02,
      );
}
