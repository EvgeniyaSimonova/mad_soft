import 'dart:convert';
import 'package:dio/dio.dart';

class DioClient {
  final _dio = Dio();

  Future<Map<String, dynamic>> getResponsePayloadList() async {
    final response = await _dio.get('https://json-parser.com/f5628f20/4.json');
    final json = jsonDecode(response.toString()) as Map<String, dynamic>;
    return json;
  }
}
