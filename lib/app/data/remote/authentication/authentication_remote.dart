abstract class AuthenticationRemote {
  Future<dynamic> logOutService();
  Future<dynamic> VerifyOtp(String phone, int pin);
  Future<dynamic> getOTP(phone);
  Future<dynamic> getDistrictList();
  Future<dynamic> getSubDistrictList(districtId);
  Future<dynamic> userRegistration(dynamic registrationModel);
}
