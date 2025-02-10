// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response_beans.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      status: json['stat'] as String?,
      message: json['msg'] as String?,
      userData: json['user_data'] == null
          ? null
          : UserDetails.fromJson(json['user_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'stat': instance.status,
      'msg': instance.message,
      'user_data': instance.userData,
    };

UserDetails _$UserDetailsFromJson(Map<String, dynamic> json) => UserDetails(
      email: json['email'] as String? ?? "",
      walletbalance: json['walletbalance'] as String? ?? "0",
    );

Map<String, dynamic> _$UserDetailsToJson(UserDetails instance) =>
    <String, dynamic>{
      'email': instance.email,
      'walletbalance': instance.walletbalance,
    };
