import 'package:flutter/material.dart';

enum Track {
  yearly('\nStart a Yearly Challenge', yearlyAsset),
  custom('\nCreate Custom', customAsset),
  monthly('\nStart a Monthly Challenge', monthlyAsset);

  const Track(this.title, this.asset);

  final String title;
  final DecorationImage asset;
}

const customAsset = DecorationImage(
    opacity: 0.30,
    colorFilter: ColorFilter.mode(Colors.white, BlendMode.color),
    image: AssetImage('assets/images/custom.jpg'),
    fit: BoxFit.fitWidth);

const monthlyAsset = DecorationImage(
    opacity: 0.30,
    image: AssetImage('assets/images/monthly.jpg'),
    fit: BoxFit.fitWidth);

const yearlyAsset = DecorationImage(
    filterQuality: FilterQuality.high,
    colorFilter: ColorFilter.mode(Colors.black, BlendMode.color),
    image: AssetImage('assets/images/yearly.jpg'),
    fit: BoxFit.fitWidth);
