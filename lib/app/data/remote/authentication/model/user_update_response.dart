class UserUpdateResponse {
  final int statusCode;
  final String results;

  UserUpdateResponse({required this.statusCode, required this.results});

  factory UserUpdateResponse.fromJson(Map<String, dynamic> json) {
    return UserUpdateResponse(
      statusCode: json['status_code'],
      results: json['results'],
    );
  }
}
