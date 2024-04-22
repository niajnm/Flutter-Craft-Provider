import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_craft/app/core/services/service_locator.dart';


class UserUpdateParams {
  String name;
  String birthDate;
  int? gender;
  int? roleId;
  File? profileImage;

 // UserInfoRepository _userRepository = serviceLocator<UserInfoRepository>();

  UserUpdateParams({
    required this.name,
    required this.birthDate,
    required this.gender,
    required this.roleId,
    this.profileImage,
  });

  Future<FormData> toFormData() async {
    //String? id = await _userRepository.getUserId();
    FormData formData = FormData();

    formData.fields.addAll([
     // MapEntry('id', id!),
      MapEntry('role_id', roleId.toString()),
      MapEntry('name', name),
      MapEntry('dob', birthDate),
      MapEntry('gender', gender.toString()),
    ]);

    if (profileImage != null) {
      formData.files.add(MapEntry(
        'profile_picture',
        await MultipartFile.fromFile(
          profileImage!.path,
          filename: profileImage!.path,
        ),
      ));
    }

    return formData;
  }
}
