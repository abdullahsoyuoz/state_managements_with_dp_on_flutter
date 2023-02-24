import 'dart:io';

import 'package:flutter/material.dart';

class PainterAnimationController {
  static final PainterAnimationController _instance =
      PainterAnimationController._internal();
  factory PainterAnimationController() => _instance;
  PainterAnimationController._internal();

  late AnimationController animationController;

  void animate(VoidCallback action) {
    PainterAnimationController().animationController.forward().whenComplete(() {
      Future.delayed(const Duration(milliseconds: 100), () {
        action.call();
        sleep(const Duration(milliseconds: 50));
        PainterAnimationController().animationController.reverse();
      });
    });
  }
}
