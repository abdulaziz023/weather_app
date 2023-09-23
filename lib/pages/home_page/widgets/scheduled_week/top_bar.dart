import 'package:flutter/material.dart';
import 'package:weather_app/styles/app_colors.dart';
import 'package:weather_app/styles/app_icons.dart';

import '../../home_Page.dart';


class TopBar extends StatefulWidget {
  const TopBar({super.key});

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 35),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              child:  IconButton(
                icon: Image(image: AssetImage(AppIcons.icArrowBack),height: 24,width: 24),
                focusColor: AppColors.white, onPressed: () {
                setState(() {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
                });
              },
              ),
            ),
            const Text(
              "Next 7 Days",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
            ),
            const SizedBox(
              width: 24,
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
