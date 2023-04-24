import 'package:flutter/material.dart';
import 'package:message_app/Presentation/providers/chat_provider.dart';
import 'package:message_app/domain/models/message.dart';
import 'package:provider/provider.dart';


class ContactMessage extends StatelessWidget {
  final Message message;
  
 
  const ContactMessage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
children: [
  Container(
    decoration:  BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      //shape: BoxShape.circle,
      color: colors.secondary
    ),
    child:  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text(message.text, style: const TextStyle(color: Colors.white),),
    )
  ),
  const SizedBox(height: 5,),
_ImageMesssage(imageUrl: message.imageUrl ?? 'https://cdn.leonardo.ai/users/1e8ad927-5483-4ce1-853c-61d217e93da4/generations/f4ead67d-93f4-493f-85b3-3b6f7cef8135/Leonardo_Diffusion_a_soldier_with_futuristic_armor_like_sparta_0.jpg',),
const SizedBox(height: 10,),
],
    );
  }
}


class _ImageMesssage extends StatelessWidget {
 
final String imageUrl;

  const _ImageMesssage({super.key, required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    final size  = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        imageUrl,
        width: size.width * 0.7,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if(loadingProgress == null)return child;
          return Container(
            height: size.width*0.7,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text(' el contacto esta enviando un mensaje'),
          );
        },
        ));
}}