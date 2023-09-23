import 'package:flutter/material.dart';

class WeatherCelsius extends StatelessWidget {
  const WeatherCelsius({
    required this.iconPath,
    required this.condition,
    required this.celsius,
    super.key,
  });

  final String iconPath;
  final String condition;
  final String celsius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 4.0,
        bottom: 4.0,
        right: 30.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(
            image: AssetImage(iconPath),
            height: 180,
            width: 200,
            fit: BoxFit.cover,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    celsius,
                    style: const TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.bold,
                      height: 0.8,
                    ),
                  ),
                  Text(
                    condition,
                    style: const TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
              const Text("°C"),
            ],
          )
        ],
      ),
    );
  }
}