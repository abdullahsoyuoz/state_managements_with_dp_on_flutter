import 'package:flutter/material.dart';
import 'package:state_managements/View/Style/colors.dart';

abstract class StateManagementHandler {
  void state(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: const Text('tanımsız'),
      backgroundColor: SyzBaseColors.redS2,
      duration: const Duration(milliseconds: 300),
      behavior: SnackBarBehavior.floating,
    ));
  }

  void reset(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: const Text('tanımsız'),
      backgroundColor: SyzBaseColors.redS2,
      duration: const Duration(milliseconds: 300),
      behavior: SnackBarBehavior.floating,
    ));
  }

  Widget watch(BuildContext context);
}
