import 'package:flutter/material.dart';
import 'package:message_app/domain/models/message.dart';

class MyMessage extends StatelessWidget {
  final Message message;
  const MyMessage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
children: [
  Container(
    decoration:  BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      //shape: BoxShape.circle,
      color: colors.primary
    ),
    child:  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text(message.text, style: const TextStyle(color: Colors.white),),
    )
  ),
  const SizedBox(height: 10,)
],
    );
  }
}