import 'package:flutter/material.dart';
import 'package:js_shims/js_shims.dart';

int hashCode(String str) {
  var hash = 0;
  for (var i = 0; i < str.length; i++) {
    hash = charCodeAt(str, i) + ((hash << 5) - hash);
  }
  return hash;
}

String intToRGB(int i) {
  var c = (i & 0x00FFFFFF).toRadixString(16);

  return "00000".substring(0, 6 - c.length) + c;
}

Color hexToColor(String code) {
  return new Color(int.parse(code.substring(0, 6), radix: 16) + 0xFF000000);
}

Color stringToHexColor(String str) {
  return hexToColor(intToRGB(hashCode(str)));
}
