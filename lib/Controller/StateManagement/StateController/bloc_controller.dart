import 'package:flutter/material.dart';
import 'package:state_managements/Controller/StateManagement/StateController/state_management_controller.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_managements/Controller/StateManagement/value.dart';

class BloCController extends Cubit<int> implements StateManagementController {
  BloCController() : super(Counter().count);

  @override
  void increment() {
    try {
      emit(Counter().count += 1);
      // 
      debugPrint("$count | increment with BloC");
    } on Exception catch (_) {
      debugPrint('from BloCController().increment()');
    }
  }

  @override
  void reset() {
    try {
      emit(Counter().count = 0);
      // 
      debugPrint("$count | reset with BloC");
    } on Exception catch (_) {
      debugPrint('from BloCController().reset()');
    }
  }

  @override
  int get count => Counter().count;
}
