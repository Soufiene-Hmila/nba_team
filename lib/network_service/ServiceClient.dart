

import 'package:dio/dio.dart';
import 'package:nba_team/screen/model/list_team_response.dart';
import 'package:nba_team/utils/logging_interceptor.dart';

class DioClient {

  late Dio dioClient; 
  
  DioClient(){
    dioClient = Dio();
    dioClient.interceptors.add(LoggingInterceptor());
  }


  Future<ListTeamResponse> getListTeamNba() async {
    try {
      Response response =  await dioClient.get('http://www.mocky.io/v3/119af0d1-c0a2-4009-af63-da5e9d472e27');
      return ListTeamResponse.fromJson(response.data);
    } catch (e){
      return ListTeamResponse();
    }
  }
  
}