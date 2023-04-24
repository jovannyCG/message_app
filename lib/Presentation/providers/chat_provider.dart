import 'package:flutter/material.dart';
import 'package:message_app/domain/models/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollcontroler = ScrollController();

  List<Message> message = [
    Message(text: 'hello', fromWho: FromWho.me),
    Message(text: 'hello', fromWho: FromWho.me),
    Message(text: 'how are you?', fromWho: FromWho.hers)
  ];
  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;
    final newMessage = Message(text: text, fromWho: FromWho.me);
    message.add(newMessage);
    notifyListeners();
    moveScrollBottom();
  }

  Future<void> moveScrollBottom() async{
    await Future.delayed(const Duration(milliseconds: 100));
    chatScrollcontroler.animateTo(chatScrollcontroler.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300), curve: Curves.easeOut);
  }
}
