import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managements/Controller/StateManagement/StateController/provider_controller.dart';
import 'package:state_managements/Controller/StateManagement/StateHandler/state_management_handler.dart';
import 'package:state_managements/View/Widget/counter_text.dart';

class ProviderHandler extends StateManagementHandler {
  @override
  void state(BuildContext context) {
    // context.read<ProviderController>().increment();
    Provider.of<ProviderController>(context, listen: false).increment();
  }

  @override
  Widget watch(BuildContext context) {
    return CounterText(
      Provider.of<ProviderController>(context, listen: true).count.toString(),
    );
    // return context.watch<ProviderController>().count.toString();
  }

  @override
  void reset(BuildContext context) {
    // context.watch<ProviderController>().reset();
    Provider.of<ProviderController>(context, listen: false).reset();
  }
}
