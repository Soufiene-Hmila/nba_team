import 'package:dio/dio.dart';
import 'package:flutter/material.dart';



class LoggingInterceptor extends Interceptor {

  int maxCharactersPerLine = 200;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    debugPrint("--> START HTTP REQUEST ${options.method} ${options.baseUrl}${options.path}");
    debugPrint("Headers: ${options.headers}");
    debugPrint("QueryParameters: ${options.queryParameters}");
    debugPrint("DataParameters: ${options.data}");
    debugPrint("<-- END HTTP REQUEST");
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    debugPrint("<-- START HTTP RESPONSE ${response.statusCode}");
    String responseAsString = response.data.toString();
    if (responseAsString.length > maxCharactersPerLine) {
      int iterations = (responseAsString.length / maxCharactersPerLine).floor();
      for (int i = 0; i <= iterations; i++) {
        int endingIndex = i * maxCharactersPerLine + maxCharactersPerLine;
        if (endingIndex > responseAsString.length) {
          endingIndex = responseAsString.length;
        }
        debugPrint("<-- DataResponse: "+responseAsString.substring(i * maxCharactersPerLine, endingIndex));
      }
    } else {
      debugPrint("<-- DataResponse: "+responseAsString);
    }
    debugPrint("<-- END HTTP RESPONSE");
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    debugPrint("<-- Error HTTP RESPONSE -->");
    debugPrint("${err.error}");
    debugPrint(err.message);
    return super.onError(err, handler);
  }

}