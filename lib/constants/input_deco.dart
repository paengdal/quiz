import 'package:flutter/material.dart';

import 'common_size.dart';

InputDecoration textInputDeco(String hintText) {
  return InputDecoration(
    hintText: hintText,
    hintStyle: TextStyle(color: Colors.grey[400]),
    enabledBorder: enableBorder(),
    errorBorder: errorBorder(),
    focusedBorder: focusedBorder(),
    focusedErrorBorder: errorBorder(),
    focusColor: Color(0xff454137),
    fillColor: Colors.grey[50],
    filled: true,
    contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
  );
}

OutlineInputBorder focusedBorder() {
  return OutlineInputBorder(
    borderSide: BorderSide(
      color: Color(0xff454137),
      // color: Colors.blue,
    ),
    borderRadius: BorderRadius.circular(common_s_gap),
  );
}

OutlineInputBorder errorBorder() {
  return OutlineInputBorder(
    borderSide: BorderSide(
      color: (Colors.redAccent),
    ),
    borderRadius: BorderRadius.circular(common_s_gap),
  );
}

OutlineInputBorder enableBorder() {
  return OutlineInputBorder(
    borderSide: BorderSide(
      color: (Colors.grey[300]!),
    ),
    borderRadius: BorderRadius.circular(common_s_gap),
  );
}
