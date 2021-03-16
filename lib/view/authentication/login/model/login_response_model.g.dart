// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginationMetaData _$PaginationMetaDataFromJson(Map<String, dynamic> json) {
  return PaginationMetaData(
    totalCount: json['totalCount'] as int?,
    page: json['page'] as int?,
    limit: json['limit'] as int?,
  );
}

Map<String, dynamic> _$PaginationMetaDataToJson(PaginationMetaData instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'page': instance.page,
      'limit': instance.limit,
    };

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    tokenType: json['tokenType'] as String?,
    accessToken: json['accessToken'] as String?,
    expiresIn: json['expiresIn'] as int?,
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'tokenType': instance.tokenType,
      'accessToken': instance.accessToken,
      'expiresIn': instance.expiresIn,
    };

LoginResponseModel _$LoginResponseModelFromJson(Map<String, dynamic> json) {
  return LoginResponseModel(
    paginationMetaData: json['paginationMetaData'] == null
        ? null
        : PaginationMetaData.fromJson(
            json['paginationMetaData'] as Map<String, dynamic>),
    data: json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
    result: json['result'] as bool?,
    message: json['message'] as String?,
    httpStatusCode: json['httpStatusCode'] as int?,
    exceptionCode: json['exceptionCode'] as String?,
  );
}

Map<String, dynamic> _$LoginResponseModelToJson(LoginResponseModel instance) =>
    <String, dynamic>{
      'paginationMetaData': instance.paginationMetaData,
      'data': instance.data,
      'result': instance.result,
      'message': instance.message,
      'httpStatusCode': instance.httpStatusCode,
      'exceptionCode': instance.exceptionCode,
    };
