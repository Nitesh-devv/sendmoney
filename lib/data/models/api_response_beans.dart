// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
part 'api_response_beans.g.dart';

@JsonSerializable()
class LoginResponse {
  @JsonKey(name: 'stat')
  String? status;
  @JsonKey(name: 'msg')
  String? message;

  @JsonKey(name: 'user_data')
  UserDetails? userData;

  LoginResponse({this.status, this.message, this.userData});

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}

@JsonSerializable()
class UserDetails {
  String? email;
  String? walletbalance;
  UserDetails({
    this.email = "",
    this.walletbalance = "0",
  });

  factory UserDetails.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$UserDetailsToJson(this);


}

