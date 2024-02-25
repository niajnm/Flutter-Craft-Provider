// import 'dart:io';

// import 'package:dio/dio.dart';


// import '/flavors/build_config.dart';

// abstract class BaseRemoteSource {
//   Dio get dioClient => DioProvider.dioWithHeaderToken;

//   final logger = BuildConfig.instance.config.logger;

//   Future<Response<T>> callApiWithErrorParser<T>(Future<Response<T>> api) async {
//     try {
//       Response<T> response = await api;

//       if (!_isResponseStatusSuccess(response.statusCode)) {
//         throw handleError(_getErrorMessage(response));
//       }

//       return response;
//     } on DioException catch (dioError) {
//       Exception exception = handleDioError(dioError);
//       logger.e(
//           "Throwing error from repository: >>>>>>> $exception : ${(exception as BaseException).message}");
//       throw exception;
//     } catch (error) {
//       logger.e("Generic error: >>>>>>> $error");

//       if (error is BaseException) {
//         rethrow;
//       }

//       throw handleError("$error");
//     }
//   }

//   bool _isResponseStatusSuccess(int? statusCode) {
//     return statusCode == null ||
//         (statusCode >= HttpStatus.ok && statusCode <= HttpStatus.imUsed);
//   }

//   String _getErrorMessage(Response? response) {
//     logger.e("${response?.data}");
//     if (response?.data != null) {
//       var data = (response?.data as Map<String, dynamic>);
//       var statusCode = data['status'];
//       if (!_isResponseStatusSuccess(statusCode)) {
//         return data['message'];
//       }
//     }

//     return response?.statusMessage ?? "Something wrong";
//   }
// }
