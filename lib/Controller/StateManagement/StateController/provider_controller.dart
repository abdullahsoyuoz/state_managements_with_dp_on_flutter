import 'package:flutter/material.dart';
import 'package:state_managements/Controller/StateManagement/StateController/state_management_controller.dart';
import 'package:state_managements/Controller/StateManagement/value.dart';

class ProviderController extends ChangeNotifier
    implements StateManagementController {
  @override
  void increment() {
    try {
      Counter().count++;
      notifyListeners();
      //
      debugPrint("$count | increment with Provider");
    } on Exception catch (_) {
      debugPrint('from ProviderController().increment()');
    }
  }

  @override
  void reset() {
    try {
      Counter().count = 0;
      notifyListeners();
      //
      debugPrint("$count | reset with Provider");
    } on Exception catch (_) {
      debugPrint('from ProviderController().reset()');
    }
  }

  @override
  int get count => Counter().count;
}
