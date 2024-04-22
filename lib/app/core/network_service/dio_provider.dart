// import 'package:dio/dio.dart';
// import 'package:flutter_craft/flavors/build_config.dart';

// class DioProvider {
//   // Base URL for API requests obtained from BuildConfig instance
//   static final String baseUrl = '${BuildConfig.instance.config.baseUrl}api/';

//   // Singleton instance of Dio
//   static Dio? _instance;

//   // Maximum line width for pretty logging
//   static const int _maxLineWidth = 90;
//   // Logger for pretty logging of Dio requests and responses
//   static final _prettyDioLogger = PrettyDioLogger(
//       requestHeader: true,
//       requestBody: true,
//       responseBody: true,
//       responseHeader: false,
//       error: true,
//       compact: true,
//       maxWidth: _maxLineWidth);

//   // Base options for Dio instance
//   static final BaseOptions _options = BaseOptions(
//     baseUrl: baseUrl,
//     connectTimeout: 60 * 1000,
//     receiveTimeout: 60 * 1000,
//   );

//   // Getter method for Dio instance with pretty logging interceptor
//   static Dio get httpDio {
//     // Create Dio instance if it doesn't exist
//     if (_instance == null) {
//       _instance = Dio(_options);

//       // Add pretty logging interceptor
//       _instance!.interceptors.add(_prettyDioLogger);

//       return _instance!;
//     } else {
//       // Clear existing interceptors and add pretty logging interceptor
//       _instance!.interceptors.clear();
//       _instance!.interceptors.add(_prettyDioLogger);

//       return _instance!;
//     }
//   }

//   // Getter method for Dio instance with access token in header
//   static Dio get tokenClient {
//     // Add interceptors including request header interceptor
//     _addInterceptors();

//     return _instance!;
//   }

//   // Getter method for Dio instance with access token in header and token refresh interceptor
//   static Dio get dioWithHeaderToken {
//     // Add interceptors including request header interceptor
//     _addInterceptors();

//     return _instance!;
//   }

//   // Getter method for Dio instance with cache mechanism
//   static Dio get httpDioWithCache {
//     // Create Dio instance if it doesn't exist
//     if (_instance == null) {
//       _instance = Dio(_options);

//       // Add interceptors including request header interceptor and cache interceptor
//       _addInterceptorsWithCache();

//       return _instance!;
//     } else {
//       // Add interceptors including request header interceptor and cache interceptor
//       _addInterceptorsWithCache();

//       return _instance!;
//     }
//   }

//   // Method to add interceptors for request header and pretty logging
//   static _addInterceptors() {
//     // Create Dio instance if it doesn't exist
//     _instance ??= httpDio;

//     // Clear existing interceptors and add request header interceptor and pretty logging interceptor
//     _instance!.interceptors.clear();
//     _instance!.interceptors.add(RequestHeaderInterceptor());
//     _instance!.interceptors.add(_prettyDioLogger);
//   }

//   // Dio cache manager for caching responses
//   static final dioCacheManager = DioCacheManager(CacheConfig()).interceptor;

//   // Method to add interceptors with cache mechanism
//   static _addInterceptorsWithCache() {
//     // Create Dio instance if it doesn't exist
//     _instance ??= httpDio;

//     // Clear existing interceptors and add request header interceptor, pretty logging interceptor, and cache interceptor
//     _instance!.interceptors.clear();
//     _instance!.interceptors.add(RequestHeaderInterceptor());
//     _instance!.interceptors.add(_prettyDioLogger);
//     _instance!.interceptors.add(dioCacheManager);
//   }

//   // Method to clear cache
//   static clearCache() {
//     // Clear all cached responses
//     DioCacheManager(CacheConfig(baseUrl: baseUrl)).clearAll();
//   }

//   // Method to build content type
//   static String _buildContentType(String version) {
//     // Construct user-defined content type based on version
//     return "user_defined_content_type+$version";
//   }

//   // Set content type for Dio instance
//   DioProvider.setContentType(String version) {
//     // Set content type for Dio instance options
//     _instance?.options.contentType = _buildContentType(version);
//   }

//   // Set content type as application/json for Dio instance
//   DioProvider.setContentTypeApplicationJson() {
//     // Set content type as application/json for Dio instance options
//     _instance?.options.contentType = "application/json";
//   }

//   // Set content type as multipart/form-data for Dio instance
//   DioProvider.setContentTypeImage() {
//     // Set content type as multipart/form-data for Dio instance options
//     _instance?.options.contentType = "multipart/form-data";
//   }
// }
