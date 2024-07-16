import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  void let(void Function(BuildContext) action) {
    action(this);
  }
}
