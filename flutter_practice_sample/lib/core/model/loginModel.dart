import 'dart:convert';

LoginModel loginModelFromJson(String str) =>
    LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  String? mobileCountryCode;
  String? mobileNumber;
  String? password;
  String? language;
  String? deviceToken;
  String? macAddress;

  LoginModel({
    this.mobileCountryCode,
    this.mobileNumber,
    this.password,
    this.language,
    this.deviceToken,
    this.macAddress,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        mobileCountryCode: json["mobileCountryCode"],
        mobileNumber: json["mobileNumber"],
        password: json["password"],
        language: json["language"],
        deviceToken: json["deviceToken"],
        macAddress: json["macAddress"],
      );

  Map<String, dynamic> toJson() => {
        "mobileCountryCode": mobileCountryCode,
        "mobileNumber": mobileNumber,
        "password": password,
        "language": language,
        "deviceToken": deviceToken,
        "macAddress": macAddress,
      };
}
