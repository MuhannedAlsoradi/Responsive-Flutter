// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget indicator() {
  String os = Platform.operatingSystem;
  if (os == 'android') {
    return CircularProgressIndicator();
  }
  return CupertinoActivityIndicator();
}
