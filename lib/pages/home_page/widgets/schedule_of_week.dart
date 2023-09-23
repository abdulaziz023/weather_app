import 'package:flutter/material.dart';
import 'package:weather_app/styles/app_colors.dart';

import '../../../models/weather_model/day_model.dart';
import 'scheduled_week/schaduled_page.dart';

class ScheduleOfWeek extends StatelessWidget {
  const ScheduleOfWeek({
    required this.days,
    super.key,
  });

  final List<Day> days;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              Text(
                "Today",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              SizedBox(width: 10),
              Text(
                "Tomorrow",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ScheduledPage(days: days),
                ),
              );
            },
            child:  Row(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Next 7 days',style: TextStyle(color: AppColors.black,fontSize: 14,decoration: TextDecoration.underline),
                        recognizer: TapAndPanGestureRecognizer()

                      ),
                    ],
                  ),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 12,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}