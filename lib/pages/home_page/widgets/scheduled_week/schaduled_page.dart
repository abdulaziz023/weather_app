import 'package:flutter/material.dart';

import '../../../../models/weather_model/day_model.dart';
import '../../../../styles/app_colors.dart';
import '../../../controller/main_controller.dart';
import '../../../data/geo_repository.dart';
import '../../../data/weather_repository.dart';
import 'info_a_week.dart';
import 'next_days.dart';
import 'top_bar.dart';

class ScheduledPage extends StatelessWidget {
  const ScheduledPage({
    required this.days,
    super.key,
  });

  final List<Day> days;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: AppColors.appBGGradient,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const TopBar(),
              Expanded(
                child: ListView(
                  children: [
                    InfoAWeek(
                      day: days.skip(1).take(1).firstOrNull,
                    ),
                    NextDays(
                      days: days.skip(2).take(6).toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}