import 'package:flutter/material.dart';

abstract class ToastMessenger {
  static GlobalKey<ScaffoldMessengerState> get instance =>
      GlobalKey<ScaffoldMessengerState>();

  void showtoast(String message);
}

class Toast extends ToastMessenger {
  @override
  void showtoast(String message) {
    ToastMessenger.instance.currentState!.showSnackBar(
      SnackBar(
        content: Text(message),
        elevation: 5,
      ),
    );
  }
}
