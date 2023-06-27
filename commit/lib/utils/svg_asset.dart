import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

Widget svgAsset(String assetName, double scale) => Transform.scale(
    scale: scale,
    child: SvgPicture.asset(
      assetName,
    ));
