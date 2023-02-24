import 'package:state_managements/Controller/StateManagement/StateController/getx_controller.dart';
import 'package:state_managements/Controller/StateManagement/StateController/state_management_controller.dart';
import 'package:state_managements/Controller/StateManagement/StateFactory/state_management_factory.dart';
import 'package:state_managements/Controller/StateManagement/StateHandler/getx_handler.dart';
import 'package:state_managements/Controller/StateManagement/StateHandler/state_management_handler.dart';
import 'package:state_managements/View/Style/colors.dart';

class GetXFactory implements StateManagementFactory {
  @override
  StateManagementController controller = GetController();

  @override
  StateManagementHandler handler = GetXHandler();

  @override
  String package = "GetX";

  @override
  int index = 2;

  @override
  List colors = [SyzBaseColors.yellowS2, SyzBaseColors.orangeS2, SyzBaseColors.purpleS3];
}
