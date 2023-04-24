import 'package:flutter/material.dart';
import 'package:message_app/Presentation/widgets/chat/contact_message.dart';
import 'package:message_app/Presentation/widgets/chat/my_message.dart';
import 'package:message_app/Presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(scale: 8,'https://cdn.leonardo.ai/users/1e8ad927-5483-4ce1-853c-61d217e93da4/generations/f4ead67d-93f4-493f-85b3-3b6f7cef8135/Leonardo_Diffusion_a_soldier_with_futuristic_armor_like_sparta_0.jpg'),
          ),
        ),
        centerTitle: true,
        title: const Text('chat'),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(child: ListView.builder(
              itemCount: 100,
              itemBuilder: (BuildContext context, int index) {   
                
                return (index % 2 ==0)
                ?  const ContactMessage()
                :const MyMessage();
                },
              
            )),
             const MessageFieldBox(),
          ],
        ),
      ),
    );

}
}