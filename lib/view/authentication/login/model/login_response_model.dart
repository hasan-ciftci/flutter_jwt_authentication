import 'package:json_annotation/json_annotation.dart';

part 'login_response_model.g.dart';

@JsonSerializable()
class PaginationMetaData {
  int? totalCount;
  int? page;
  int? limit;

  PaginationMetaData({this.totalCount, this.page, this.limit});

  factory PaginationMetaData.fromJson(Map<String, dynamic> json) {
    return _$PaginationMetaDataFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PaginationMetaDataToJson(this);
  }
}

@JsonSerializable()
class Data {
  String? tokenType;
  String? accessToken;
  int? expiresIn;

  Data({this.tokenType, this.accessToken, this.expiresIn});

  factory Data.fromJson(Map<String, dynamic> json) {
    return _$DataFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$DataToJson(this);
  }
}

@JsonSerializable()
class LoginResponseModel {
  PaginationMetaData? paginationMetaData;
  Data? data;
  bool? result;
  String? message;
  int? httpStatusCode;
  String? exceptionCode;

  LoginResponseModel(
      {required this.paginationMetaData,
      required this.data,
      this.result,
      this.message,
      this.httpStatusCode,
      this.exceptionCode});

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    return _$LoginResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$LoginResponseModelToJson(this);
  }
}
