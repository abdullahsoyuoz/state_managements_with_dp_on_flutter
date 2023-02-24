import 'package:state_managements/Controller/StateManagement/StateController/bloc_controller.dart';
import 'package:state_managements/Controller/StateManagement/StateController/state_management_controller.dart';
import 'package:state_managements/Controller/StateManagement/StateFactory/state_management_factory.dart';
import 'package:state_managements/Controller/StateManagement/StateHandler/bloc_handler.dart';
import 'package:state_managements/Controller/StateManagement/StateHandler/state_management_handler.dart';
import 'package:state_managements/View/Style/colors.dart';

class BloCFactory implements StateManagementFactory {
  @override
  StateManagementController controller = BloCController();

  @override
  StateManagementHandler handler = BloCHandler();

  @override
  String package = "BloC";

  @override
  int index = 1;

  @override
  List colors = [SyzBaseColors.greyS1, SyzBaseColors.redS2, SyzBaseColors.blackS3];
}
