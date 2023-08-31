import 'package:fluttertestview/reset_password/reset_validator.dart';
import 'package:fluttertestview/reset_password/rp.dart';
import 'package:flutter/material.dart';

mixin RPMixin on State<ResetPasswordView> {
  final TextEditingController _controller = TextEditingController();
  TextEditingController get controller => _controller;
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  void onSubmitPressed() {
    () {
      if (ResetValidator(_controller.text).control()) return;
    };
  }
}
