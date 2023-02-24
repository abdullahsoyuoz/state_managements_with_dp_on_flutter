import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_managements/Controller/StateManagement/StateController/getx_controller.dart';
import 'package:state_managements/Controller/StateManagement/StateHandler/state_management_handler.dart';
import 'package:state_managements/View/Widget/counter_text.dart';

class GetXHandler extends StateManagementHandler {
  final controller = Get.put(GetController());

  @override
  void state(BuildContext context) {
    controller.increment();
  }

  @override
  Widget watch(BuildContext context) {
    return GetBuilder<GetController>(
        global: true,
        builder: (_) {
          return CounterText(controller.count.toString());
        });
  }

  @override
  void reset(BuildContext context) {
    controller.reset();
  }
}
