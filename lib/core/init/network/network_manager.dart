import 'dart:io';

import 'package:dio/dio.dart';
import 'package:jwt_authentication/core/base/model/base_model.dart';
import 'package:jwt_authentication/core/constants/api_constants.dart';

class NetworkManager {
  static NetworkManager? _instance;

  static NetworkManager get instance {
    _instance ??= NetworkManager._init();
    return _instance!;
  }

  late Dio _dio;

  NetworkManager._init() {
    final baseOptions = BaseOptions(
      baseUrl: ApiConstants.BASE_URL,
    );

    _dio = Dio(baseOptions);
  }

  Future dioPost<T extends BaseModel>(String endPoint, T model) async {
    final response = await _dio.post(endPoint, data: model.toJson());
    switch (response.statusCode) {
      case HttpStatus.ok:
        final responseBody = response.data;
        //TODO: RESPONSE WILL BE HANDLED
        return responseBody;
      default:
    }
  }
}
