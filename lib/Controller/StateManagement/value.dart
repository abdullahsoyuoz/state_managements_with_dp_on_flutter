import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:state_managements/Controller/StateManagement/StateFactory/bloc_factory.dart';
import 'package:state_managements/Controller/StateManagement/StateFactory/getx_factory.dart';
import 'package:state_managements/Controller/StateManagement/StateFactory/provider_factory.dart';
import 'package:state_managements/Controller/StateManagement/StateFactory/state_management_factory.dart';

class Counter {
  static final Counter _instance = Counter._internal();
  factory Counter() => _instance;
  Counter._internal();
  int count = 0.obs();
}

ValueNotifier<StateManagementFactory> selectedValue =
    ValueNotifier<StateManagementFactory>(stateManagementsList[0]);

List<StateManagementFactory> stateManagementsList = [
  ProviderFactory(),
  BloCFactory(),
  GetXFactory(),
];
