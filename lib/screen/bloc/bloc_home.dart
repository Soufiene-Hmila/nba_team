

import 'package:nba_team/repository/repository.dart';
import 'package:nba_team/screen/model/list_team_response.dart';
import 'package:rxdart/rxdart.dart';

class BlocHome {

  Repository repository = Repository();

  final _getListTeam = PublishSubject<ListTeamResponse>();
  PublishSubject<ListTeamResponse> get listTeamNba => _getListTeam;

  void getListTeamNba() {
    repository.getListNbaTeam().then((value) => _getListTeam.sink.add(value));
  }


}