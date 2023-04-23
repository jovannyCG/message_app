import 'package:flutter/material.dart';

class MyMessage extends StatelessWidget {
  const MyMessage({super.key});

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
    child: const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text('holaaa', style: TextStyle(color: Colors.white),),
    )
  ),
  const SizedBox(height: 10,)
],
    );
  }
}