import 'package:dio/dio.dart';
import 'package:message_app/domain/models/message.dart';
import 'package:message_app/domain/models/resp_api.dart';

class GetApiResp {
  final _dio = Dio();
  Future<Message> getAnswer() async {
    final resp = await _dio.get('https://yesno.wtf/api');
    final apiResp = ApiResp.fromJsonMap(resp.data);
    return apiResp.toMessageModel();
  }
}
