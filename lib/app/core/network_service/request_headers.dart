import 'package:dio/dio.dart';
import 'package:flutter_craft/app/core/services/service_locator.dart';

class RequestHeaderInterceptor extends InterceptorsWrapper {
 // UserInfoRepository _userRepository = serviceLocator<UserInfoRepository>();
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    getCustomHeaders().then((customHeaders) {
      options.headers.addAll(customHeaders);
      super.onRequest(options, handler);
    });
  }

  Future<Map<String, String>> getCustomHeaders() async {
    var customHeaders = {'Accept': 'application/json'};
    //var token = await _userRepository.getUserToken();
    var token ='';
    customHeaders.addAll({'Authorization': 'Bearer ${token}'});
    return customHeaders;
  }

  
} 


