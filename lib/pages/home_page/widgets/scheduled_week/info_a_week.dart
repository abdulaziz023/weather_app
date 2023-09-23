import 'package:flutter/material.dart';
import 'package:weather_app/utils/icon_path_extension.dart';
import 'package:weather_app/utils/temp_extension.dart';

import '../../../../models/weather_model/day_model.dart';
import '../../../../styles/app_colors.dart';
import '../../../../styles/app_icons.dart';

class InfoAWeek extends StatelessWidget {
  const InfoAWeek({
    required this.day,
    super.key,
  });

  final Day? day;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 15,
        left: 15,
        right: 15,
      ),
      child: Center(
        child: SizedBox(
          height: 180,
          width: double.infinity,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.white30,
            ),
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Tomorrow"),
                      Row(
                        children: [
                          Text("${(day?.temp ?? 0.0).fahrenheitToCelsius}°"),
                          SizedBox(width: 10),
                          Image(
                            image: AssetImage((day?.icon ?? "").weatherToIconPath),
                            width: 55,
                            height: 55,
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CardItem(
                        icon: AppIcons.icUmbrella,
                        text: "${day?.precip ?? 0.0}cm",
                      ),
                      CardItem(
                        icon: AppIcons.icWind,
                        text: "${day?.windspeed ?? 0.0}km/h",
                      ),
                      CardItem(
                        icon: AppIcons.icHumidity,
                        text: "${(day?.humidity ?? 0.0).toInt()}%",
                        isDefective: true,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  const CardItem({
    required this.icon,
    required this.text,
    this.isDefective = false,
    super.key,
  });

  final String text;
  final String icon;
  final bool isDefective;

  @override
  Widget build(BuildContext context) => Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Transform.scale(
        scale: 1.5,
        child: isDefective
            ? SizedBox(
          height: 66,
          width: 68,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 12,
              top: 5,
              bottom: 24,
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(12),
                ),
                image: DecorationImage(
                  image: AssetImage(icon),
                  fit: BoxFit.cover,
                ),
                color: AppColors.white,
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0.5, 10),
                    spreadRadius: 0.1,
                    blurRadius: 10,
                    color: AppColors.blue,
                  )
                ],
              ),
            ),
          ),
        )
            : Image(
          image: AssetImage(icon),
          width: 80,
          height: 80,
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: isDefective ? 20.0 : 0.0),
        child: Text(
          text,
          style: const TextStyle(fontSize: 10),
        ),
      )
    ],
  );
}