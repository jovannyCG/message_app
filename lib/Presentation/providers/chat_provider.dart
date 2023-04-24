

import 'package:flutter/material.dart';
import 'package:message_app/domain/models/message.dart';

class ChatProvider extends ChangeNotifier{
  List<Message> message =[
    Message(text: 'hello', fromWho: FromWho.me),
    Message(text: 'how are you?', fromWho: FromWho.hers)
  ];
Future<void> sendMessage(String text) async {

}
}