import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:nba_team/style/app_theme_mode.dart';


class TextView extends StatelessWidget {

  final bool isTitle;
  final String title;
  final String? description;
  const TextView({Key? key, required this.title, this.description, this.isTitle = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isTitle || description != null && "$description".isNotEmpty?
    AutoSizeText(isTitle?title:'$title : $description',
      style: TextStyle(fontSize: isTitle?16:10, fontWeight: FontWeight.w500,
        color: isTitle? AppThemeMode.secondaryColor:
        AppThemeMode.primaryColor.withOpacity(0.9),), maxLines: 1,)
    : const SizedBox();
  }
}
