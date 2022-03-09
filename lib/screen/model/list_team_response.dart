import 'package:nba_team/screen/model/nba_team.dart';

class ListTeamResponse {

    List<NbaTeam>? listNbaTeam;

    ListTeamResponse({this.listNbaTeam,});

    factory ListTeamResponse.fromJson(Map<String, dynamic> json) {
        return ListTeamResponse(
            listNbaTeam: json['listNbaTeam'] != null ?
            (json['listNbaTeam'] as List).map((i) => NbaTeam.fromJson(i)).toList() : null,
        );
    }

}