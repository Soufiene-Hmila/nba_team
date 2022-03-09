import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nba_team/screen/bloc/bloc_home.dart';
import 'package:nba_team/screen/model/list_team_response.dart';
import 'package:nba_team/screen/widget/item_list_team.dart';
import 'package:nba_team/screen/widget/widget_circle_backgound.dart';
import 'package:nba_team/style/app_theme_mode.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  _ScreenHomeState createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {

  BlocHome blocHome = BlocHome();

  @override
  void initState() {
    blocHome.getListTeamNba();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemeMode.primaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppThemeMode.primaryColor,
        title: const Text('NBA Team'),
      ), body: Container(
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        color: AppThemeMode.containerBackground,
        borderRadius:  BorderRadius.only(
            topRight: Radius.circular(25),
            topLeft: Radius.circular(25))
      ),
      child: Stack(
        children: [
          const WidgetCircleBackgound(),
          StreamBuilder(
            stream: blocHome.listTeamNba,
            builder: (context, AsyncSnapshot<ListTeamResponse> snapshot) {
              if(snapshot.hasData) {
                if(snapshot.data != null) {
                  return ListView.builder(
                    itemCount: snapshot.data?.listNbaTeam?.length,
                    itemBuilder: (BuildContext context, int index ){
                      return ItemListTeam(nbaTeam: snapshot.data?.listNbaTeam?.elementAt(index),);
                },
                  );
                } else {
                  return Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icon_image.png')
                      )
                    ),
                  );
                }
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            }
          )
        ],
      ),
    ));
  }
}
