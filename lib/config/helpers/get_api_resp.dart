

import 'package:dio/dio.dart';
import 'package:message_app/domain/models/message.dart';

class GetApiResp{
  final _dio =Dio();
  Future<Message> getAnswer() async{
    final rep = await _dio.get('https://yesno.wtf/api');
    
   throw UnimplementedError();
  }
}