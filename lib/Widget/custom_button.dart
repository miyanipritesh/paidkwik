import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget customButton(Function onPress, name, Color color) {
  return UnconstrainedBox(
    child: SizedBox(
      height: 50,
      width: 30.h,
      child: ElevatedButton(
          onPressed: onPress(),
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
          child: Text(
            name,
            style: const TextStyle(color: Colors.white, fontSize: 20),
          )),
    ),
  );
}
