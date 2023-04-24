import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  final ValueChanged<String> onValue;
  const MessageFieldBox({super.key, required this.onValue});

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
              final textValue = textcontroller.value.text;
              textcontroller.clear();
              onValue(textValue);

            },
          )),
      onFieldSubmitted: (value) {
        textcontroller.clear();
        focusNode.requestFocus();
        onValue(value);
      },
    );
  }
}
