import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final textcontroller = TextEditingController();
    final focusNode = FocusNode();

    final outlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(40));
    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      controller: textcontroller,
      focusNode: focusNode,
      decoration: InputDecoration(
          hintText: 'escribe algo',
          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          filled: true,
          suffixIcon: IconButton(
            icon: const Icon(Icons.send_outlined),
            onPressed: () {
              final textValue = textcontroller.value;
              textcontroller.clear();
            },
          )),
      onFieldSubmitted: (value) {
        textcontroller.clear();
        focusNode.requestFocus();
      },
    );
  }
}
