import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:state_managements/Controller/StateManagement/StateController/state_management_controller.dart';
import 'package:state_managements/Controller/StateManagement/value.dart';

class GetController extends GetxController
    implements StateManagementController {
  @override
  void increment() {
    try {
      Counter().count++;
      update();
      // 
      debugPrint("$count | increment with GetX");
    } on Exception catch (_) {
      debugPrint('from GetXController().increment()');
    }
  }

  @override
  void reset() {
    try {
      Counter().count = 0;
      update();
      // 
      debugPrint("$count | reset with GetX");
    } on Exception catch (_) {
      debugPrint('from GetXController().reset()');
    }
  }

  @override
  int get count => Counter().count;
}
