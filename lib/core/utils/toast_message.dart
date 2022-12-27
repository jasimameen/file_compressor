import 'package:flutter/material.dart';

abstract class ToastMessenger {
  static GlobalKey<ScaffoldMessengerState> instance =
      GlobalKey<ScaffoldMessengerState>();

  void show(String message);
}

class Toast extends ToastMessenger {
  static Toast instance =  Toast();

  @override
  void show(String message) async {
    ToastMessenger.instance.currentState!.removeCurrentSnackBar();
    ToastMessenger.instance.currentState!.showSnackBar(
      SnackBar(
        content: Text(message),
        behavior: SnackBarBehavior.floating,
        shape: const StadiumBorder(),
        action: SnackBarAction(
          label: 'close',
          onPressed: () =>
              ToastMessenger.instance.currentState!.hideCurrentSnackBar(),
        ),
      ),
    );
  }
}
