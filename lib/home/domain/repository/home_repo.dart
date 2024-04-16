import 'package:mad_soft/home/data/model/response_payload.dart';

abstract interface class IHomeRepo {
  Future<ResponsePayload> getResponsePayload();
}
