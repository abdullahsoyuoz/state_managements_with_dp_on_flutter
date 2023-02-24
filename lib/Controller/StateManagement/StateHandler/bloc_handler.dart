import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_managements/Controller/StateManagement/StateController/bloc_controller.dart';
import 'package:state_managements/Controller/StateManagement/StateHandler/state_management_handler.dart';
import 'package:state_managements/View/Widget/counter_text.dart';

class BloCHandler extends StateManagementHandler {
  @override
  void state(BuildContext context) {
    BlocProvider.of<BloCController>(context, listen: false).increment();
    // context.read<BloCController>().increment();
  }

  @override
  Widget watch(BuildContext context) {
    return CounterText(
        BlocProvider.of<BloCController>(context, listen: true).count.toString()
        // context.watch<BloCController>().count.toString();
        );
  }

  @override
  void reset(BuildContext context) {
    BlocProvider.of<BloCController>(context, listen: false).reset();
  }
}
