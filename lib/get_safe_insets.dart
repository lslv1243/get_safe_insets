import 'dart:async';

import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';

const MethodChannel _channel = const MethodChannel('get_safe_insets');

Future<EdgeInsets> getSafeInsets() async {
  final insets = await _channel.invokeMapMethod<String, int>('getSafeInsets');
  return EdgeInsets.fromLTRB(
      insets!['left']!.toDouble(),
      insets['top']!.toDouble(),
      insets['right']!.toDouble(),
      insets['bottom']!.toDouble());
}
