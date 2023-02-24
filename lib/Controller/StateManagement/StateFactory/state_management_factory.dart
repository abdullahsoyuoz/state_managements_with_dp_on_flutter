import 'package:state_managements/Controller/StateManagement/StateController/state_management_controller.dart';
import 'package:state_managements/Controller/StateManagement/StateHandler/state_management_handler.dart';

abstract class StateManagementFactory {
  late StateManagementController controller;
  late StateManagementHandler handler;
  late String package;
  late int index;
  late List colors;

  StateManagementFactory();
}
