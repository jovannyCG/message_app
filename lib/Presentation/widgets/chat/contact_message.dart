import 'package:flutter/material.dart';


class ContactMessage extends StatelessWidget {
  const ContactMessage({super.key});

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
    child: const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text('holaa mundo', style: TextStyle(color: Colors.white),),
    )
  ),
  const SizedBox(height: 5,),
_ImageMesssage(),
const SizedBox(height: 10,),
],
    );
  }
}


class _ImageMesssage extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    final size  = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        'https://yesno.wtf/assets/no/1-c7d128c95c1740ec76e120146c870f0b.gif',
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