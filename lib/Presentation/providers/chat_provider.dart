import 'package:flutter/material.dart';
import 'package:message_app/config/helpers/get_api_resp.dart';
import 'package:message_app/domain/models/message.dart';

class ChatProvider extends ChangeNotifier {
  final chatScrollcontroler = ScrollController();
  final getApiResp = GetApiResp();

  List<Message> message = [
    Message(text: 'hello', fromWho: FromWho.me),
    Message(text: 'hello', fromWho: FromWho.me),
    Message(text: 'how are you?', fromWho: FromWho.hers)
  ];
  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;
    final newMessage = Message(text: text, fromWho: FromWho.me);
    message.add(newMessage);
    if(text.endsWith('?')) await herReply();
    notifyListeners();
    moveScrollBottom();
  }
 Future<void> herReply()async{
  final herMessage = await getApiResp.getAnswer();
  message.add(herMessage);
  notifyListeners();
  moveScrollBottom();
 
 }
  Future<void> moveScrollBottom() async{
    await Future.delayed(const Duration(milliseconds: 100));
    chatScrollcontroler.animateTo(chatScrollcontroler.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300), curve: Curves.easeOut);
  }

}
