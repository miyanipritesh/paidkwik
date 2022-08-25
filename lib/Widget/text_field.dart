import 'package:flutter/material.dart';

Widget textFieldWidget(String name, TextEditingController controller) {
  return Padding(
    padding: const EdgeInsets.only(
      left: 15.0,
      right: 15,
      bottom: 20,
    ),
    child: SizedBox(
      height: 50,
      child: TextFormField(
        keyboardType: TextInputType.text,
        controller: controller,
        textInputAction: TextInputAction.next,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
            hintText: name,
            hintStyle: const TextStyle(color: Colors.white30),
            focusColor: Colors.white54,
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white12)),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white12)),
            border: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white12))),
      ),
    ),
  );
}
