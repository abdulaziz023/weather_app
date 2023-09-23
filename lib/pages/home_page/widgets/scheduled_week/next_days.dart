import 'package:flutter/material.dart';
import 'package:weather_app/styles/app_icons.dart';
import 'package:weather_app/utils/icon_path_extension.dart';
import 'package:weather_app/utils/temp_extension.dart';
import 'package:weather_app/utils/time_extensions.dart';

import '../../../../models/weather_model/day_model.dart';
import '../../../../styles/app_colors.dart';

class NextDays extends StatelessWidget {
  const NextDays({
    required this.days,
    super.key,
  });

  final List<Day> days;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        children: days.map<Widget>((e) {
          return WeekItem(
            weekDay: (e.datetimeEpoch ?? 0).weekName,
            degree: "${(e.temp ?? 0.0).fahrenheitToCelsius}°",
            icon: (e.icon ?? "").weatherToIconPath,
          );
        }).toList(),
      ),
    );
  }
}

class WeekItem extends StatelessWidget {
  const WeekItem({
    required this.weekDay,
    required this.degree,
    required this.icon,
    super.key,
  });

  final String weekDay;
  final String degree;
  final String icon;

  @override
  Widget build(BuildContext context) => Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(
          top: 15,
          left: 15,
          right: 15,
        ),
        child: SizedBox(
          height: 60,
          width: double.infinity,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: AppColors.white30,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    weekDay,
                    style: const TextStyle(fontSize: 12),
                  ),
                ),
                Row(
                  children: [
                    Text(degree),
                    Image(
                      image: AssetImage(icon),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      )
    ],
  );
}