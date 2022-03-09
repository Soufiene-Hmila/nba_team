import 'package:flutter/material.dart';
import 'package:nba_team/style/app_theme_mode.dart';

class WidgetCircleBackgound extends StatelessWidget {
  const WidgetCircleBackgound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: MediaQuery.of(context).size.width*0.35,
        bottom: MediaQuery.of(context).size.width*0.95,
        child: Container(
          height: MediaQuery.of(context).size.width*1.25,
          width: MediaQuery.of(context).size.width*1.25,
          decoration: BoxDecoration(
            color: AppThemeMode.secondaryColor.withOpacity(0.75),
                shape: BoxShape.circle
          ),
        ));
  }
}
