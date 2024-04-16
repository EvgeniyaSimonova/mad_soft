import 'package:flutter/material.dart';
import 'package:mad_soft/dio_client/dio_client.dart';
import 'package:mad_soft/my_app.dart';

void main() {
  final dioClient = DioClient();
  runApp(MyApp(
    dioClient: dioClient,
  ));
}
