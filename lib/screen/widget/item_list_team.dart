import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nba_team/screen/model/nba_team.dart';
import 'package:nba_team/style/app_theme_mode.dart';

class ItemListTeam extends StatelessWidget {

  final NbaTeam? nbaTeam;
  const ItemListTeam({Key? key, this.nbaTeam}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      decoration: const BoxDecoration(
        color: AppThemeMode.containerBackground,
        borderRadius: BorderRadius.all(Radius.circular(25))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('${nbaTeam?.full_name}',
            style: const TextStyle(color: AppThemeMode.secondaryColor, fontSize: 18),),
          const Divider(thickness: 15, endIndent: 15, height: 0.1,),
          Text('${nbaTeam?.name}'),
          Text('${nbaTeam?.full_name}'),
          Text('${nbaTeam?.full_name}'),
        ],
      ),
    );
  }
}
