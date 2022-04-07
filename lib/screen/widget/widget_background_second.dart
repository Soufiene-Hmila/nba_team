import 'package:flutter/material.dart';

class WidgetBackgroundSecond extends StatefulWidget {
  const WidgetBackgroundSecond({Key? key}) : super(key: key);
  @override
  _WidgetBackgroundSecondState createState() => _WidgetBackgroundSecondState();
}

class _WidgetBackgroundSecondState extends State<WidgetBackgroundSecond> {

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.of(context).size.width,
      right: -MediaQuery.of(context).size.width*1.25,
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
