

import 'package:nba_team/network_service/ServiceClient.dart';
import 'package:nba_team/screen/model/list_team_response.dart';

class Repository {

  DioClient dioClient = DioClient();

  Future<ListTeamResponse> getListNbaTeam() => dioClient.getListTeamNba();
}