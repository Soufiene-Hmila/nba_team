import 'package:flutter/material.dart';

class WidgetBackground extends StatefulWidget {
  const WidgetBackground({Key? key}) : super(key: key);
  @override
  _WidgetBackgroundState createState() => _WidgetBackgroundState();
}

class _WidgetBackgroundState extends State<WidgetBackground> {

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.width,
      left: -MediaQuery.of(context).size.width*1.25,
      child: Container(
        height: MediaQuery.of(context).size.width*1.75,
        width: MediaQuery.of(context).size.width*1.75,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
        ),
      ),
    );
  }
}
