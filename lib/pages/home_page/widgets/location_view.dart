import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:weather_app/utils/time_extensions.dart';

import '../../../styles/app_colors.dart';
class LocationView extends StatelessWidget {
  const LocationView({
    required this.placeName,
    super.key,
  });

  final String placeName;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 18.0,
      vertical: 8.0,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          placeName,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          DateTime.now().weekMonthDay,
          style: const TextStyle(
            fontSize: 11.0,
            color: AppColors.grayText,
          ),
        ),
      ],
    ),
  );
}