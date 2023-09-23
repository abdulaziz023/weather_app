import 'package:flutter/material.dart';
import 'package:weather_app/styles/app_colors.dart';
import 'package:weather_app/styles/app_icons.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Image(
              height: 24,
              width: 24,
              image: AssetImage(AppIcons.icSearch),
            ),
          ),
          const Row(
            children: [
              TabPageSelectorIndicator(
                  backgroundColor: AppColors.black,
                  borderColor: AppColors.black,
                  size: 8.0),
              TabPageSelectorIndicator(
                  backgroundColor: AppColors.black,
                  borderColor: AppColors.black,
                  size: 8.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.0),
                child: SizedBox(
                  height: 8,
                  width: 34.0,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: AppColors.black,
                      borderRadius: BorderRadius.all(
                        Radius.circular(4.0),
                      ),
                    ),
                  ),
                ),
              ),
              TabPageSelectorIndicator(
                  backgroundColor: AppColors.black,
                  borderColor: AppColors.black,
                  size: 8.0),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: Image(
              image: AssetImage(AppIcons.icMenu),
              height: 24,
              width: 24,
            ),
          ),
        ],
      ),
    );
  }
}
