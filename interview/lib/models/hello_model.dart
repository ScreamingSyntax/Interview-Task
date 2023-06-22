import 'dart:convert';

class HelloModel {
  int successId;
  String message;

  HelloModel({required this.successId, required this.message});

  factory HelloModel.fromJson(Map<String, dynamic> json) {
    return HelloModel(
      successId: json['success'],
      message: json['message'],
    );
  }
}
