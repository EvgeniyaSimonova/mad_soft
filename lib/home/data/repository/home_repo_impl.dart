import 'package:mad_soft/dio_client/dio_client.dart';
import 'package:mad_soft/home/data/model/response_payload.dart';
import 'package:mad_soft/home/domain/repository/home_repo.dart';

class HomeRepo implements IHomeRepo {
  final DioClient _dioClient;

  HomeRepo(this._dioClient);

  @override
  Future<ResponsePayload> getResponsePayload() async {
    final response = await _dioClient.getResponsePayload();
    final model = ResponsePayload.fromJson(response);
    return model;
  }
}
