import 'package:flutter/material.dart';

class Success{
  int code;
  Object response;
  Success({required this.response, required this.code});
}

class Failure{
  String? message;
  Failure({this.message});
}