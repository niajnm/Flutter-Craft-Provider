// import 'package:dio/dio.dart';
// import 'package:flutter_craft/app/data/remote/authentication/authentication_remote.dart';
// import 'package:flutter_craft/app/data/remote/authentication/endpoint.dart';


// class AuthenticationRemoteImpl extends BaseRemoteSource
//     implements AuthenticationRemote {

//   @override
//   Future<bool> logOutService() {
//     var endpoint = Endpoint.logout;
//     var dioCall = dioClient.get(endpoint);

//     try {
//       return callApiWithErrorParser(dioCall)/*  */
//           .then((response) => _parseLogoutResponse(response))
//           .onError((error, stackTrace) async {
//         return await _localSource.deleteAllValue();
//       });
//     } catch (e) {
//       rethrow;
//     }
//   }

//   Future<bool> _parseLogoutResponse(Response<dynamic> response) async {
//     if (response.data['status_code'] == 200) {
//       // after logout from server then delete value from local
//       return await _localSource.deleteAllValue();
//     } else {
//       return await _localSource.deleteAllValue();
//     }
//   }

//   @override
//   Future<VerifyOtpModel> VerifyOtp(phone, pin) {
//     var params = {"phone": phone, "otp": pin};

//     var endpoint = Endpoint.otpVerify;
//     var dioCall = dioClient.post(endpoint, data: params);

//     try {
//       return callApiWithErrorParser(dioCall)
//           .then((response) => _parseOtpResponse(response));
//     } catch (e) {
//       rethrow;
//     }
//   }

//   VerifyOtpModel _parseOtpResponse(Response<dynamic> response) {
//     return VerifyOtpModel.fromJson(response.data);
//   }

//   @override
//   Future getOTP(phone) {
//     var params = {"phone": phone};
//     var endpoint = Endpoint.otpRequest;
//     var dioCall = dioClient.post(endpoint, data: params);

//     try {
//       return callApiWithErrorParser(dioCall)
//           .then((response) => _parseGetOtpResponse(response));
//     } catch (e) {
//       rethrow;
//     }
//   }

//   dynamic _parseGetOtpResponse(Response<dynamic> response) {
//     return response.data;
//   }

//   @override
//   Future<DistrictResponseModel> getDistrictList() {
//     var endPoint = "location/get/districts";
//     var dioCall = dioClient.get(endPoint);
//     try {
//       return callApiWithErrorParser(dioCall)
//           .then((response) => _parseDistrictRequest(response));
//     } catch (e) {
//       rethrow;
//     }
//   }

//   DistrictResponseModel _parseDistrictRequest(Response<dynamic> response) {
//     return DistrictResponseModel.fromJson(response.data);
//   }

//   @override
//   Future<SubDistrictResponseModel> getSubDistrictList(districtId) {
//     var endPoint = "location/get/subdistricts";
//     var params = {"district_id": districtId};
//     var dioCall = dioClient.post(endPoint, data: params);
//     try {
//       return callApiWithErrorParser(dioCall)
//           .then((response) => _parseSubDistrictRequest(response));
//     } catch (e) {
//       rethrow;
//     }
//   }

//   SubDistrictResponseModel _parseSubDistrictRequest(
//       Response<dynamic> response) {
//     return SubDistrictResponseModel.fromJson(response.data);
//   }

//   @override
//   Future<UserUpdateResponse> userRegistration(
//       RegistrationModel registrationModel) {
//     var endPoint = "auth/user/update";

//     var dioCall = dioClient.post(endPoint, data: registrationModel);
//     try {
//       return callApiWithErrorParser(dioCall)
//           .then((response) => _parseUserInfoResponse(response));
//     } catch (e) {
//       rethrow;
//     }
//   }

//   UserUpdateResponse _parseUserInfoResponse(Response<dynamic> response) {
//     return UserUpdateResponse.fromJson(response.data);
//   }
// }
