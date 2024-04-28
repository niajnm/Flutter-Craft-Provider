import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter_craft/app/core/services/service_locator.dart';
import 'package:flutter_craft/app/data/remote/weather/model/weather_params.dart';
import 'package:flutter_craft/app/data/remote/weather/model/weather_response_model.dart';
import 'package:flutter_craft/app/data/repository/weather/weather_repository.dart';

class WeatherViewModel extends ChangeNotifier {
  WeatherRepository _weatherRepository = serviceLocator<WeatherRepository>();

  // translateText(String? text, BuildContext context) async {
  //   final String currentLocale = Localizations.localeOf(context).languageCode;

  //   if (currentLocale == 'bn') {
  //     final translator = GoogleTranslator();
  //     var translation = await translator.translate(text ?? 'Loading', to: 'bn');
  //     return translation.text.toString();
  //   }

  //   return text;
  // }

  Future<dynamic> getWeather() async {
// 23.8041
// lon 90.4152

    var queryParams = WeatherParams(lat: '23.8041', lon: '23.8041');
// WeatherParams(lat: currentLat.toString(), lon: currentLon.toString());
    WeatherResponseModel response =
        await _weatherRepository.getSevenDaysWeather(queryParams);

    log('waether api called ');
    log('  waether${response.current!.temp}');

    return response;
  }

  // Future<WeatherModelUi> getSevenDaysWeather(
  //     double currentLat, double currentLon, BuildContext context) async {
  //   var queryParams =
  //       WeatherParams(lat: currentLat.toString(), lon: currentLon.toString());
  //   WeatherResponseModel response =
  //       await _weatherRepository.getSevenDaysWeather(queryParams);

  //   WeatherModelUi data = await convertToWeatherModelUi(response, context);

  //   return data;
  // }

  // Future<WeatherModelUi> convertToWeatherModelUi(
  //     WeatherResponseModel response, BuildContext context) async {
  //   double? currentTemperature = response.current?.temp;
  //   String? currentWeatherStatus = await translateText(
  //       response.current?.weather?[0].description ?? 'Loading', context);

  //   final currentWeatherIcon = response.current?.weather?[0].icon;
  //   String? currentWeatherUrl =
  //       "${ImageValues.weather_image_url}$currentWeatherIcon@2x.png";

  //   // Extract daily data
  //   List<DaysAndTimes>? daysAndTimesList = response.daily?.map((daily) {
  //     String? icon = daily.weather?[0].icon;
  //     return DaysAndTimes(
  //       days: formatDayName(daily.dt, context),
  //       dates: formatDate(daily.dt, context),
  //       temperature: formatTemperature(daily.temp?.day, context),
  //       imageUrl: "${ImageValues.weather_image_url}$icon@2x.png",
  //     );
  //   }).toList();

  //   return WeatherModelUi(
  //     currentWeather: formatTemperature(currentTemperature!, context),
  //     currentWeatherStatus: currentWeatherStatus,
  //     currentWeatherUrl: currentWeatherUrl,
  //     daysAndTimesList: daysAndTimesList,
  //   );
  // }
}