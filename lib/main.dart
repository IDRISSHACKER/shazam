import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'App.dart';

extension on List<int> {
  int get ihsum => fold(0, (a, b) => a + b);
}

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();


  runApp(const MyApp());
}