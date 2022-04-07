import 'package:flutter/material.dart';
import 'package:nba_team/screen/model/nba_team.dart';
import 'package:nba_team/screen/widget/text_view.dart';
import 'package:nba_team/style/app_theme_mode.dart';

class ItemListTeam extends StatelessWidget {

  final NbaTeam? nbaTeam;
  const ItemListTeam({Key? key, this.nbaTeam}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 13, vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: AppThemeMode.containerBackground,
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        boxShadow: <BoxShadow>[BoxShadow(
            color: Colors.black12,
            offset: Offset.fromDirection(1.0,1.0),
            blurRadius: 1.0)
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextView(isTitle: true, title: '${nbaTeam?.full_name}',),
          const SizedBox(height: 4,),
          const Divider(height: 4, color: AppThemeMode.secondaryColor,),
          const SizedBox(height: 8,),
          TextView(title: 'Name', description: nbaTeam?.name,),
          TextView(title: 'division', description: nbaTeam?.division,),
          TextView(title: 'City', description: nbaTeam?.city,),
        ],
      ),
    );
  }
}
