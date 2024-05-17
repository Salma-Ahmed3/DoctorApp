import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://10.0.2.2:7093/api/';

  final Dio _dio;
  ApiService(this._dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get('$_baseUrl$endPoint');
    return response.data;
  }
}
