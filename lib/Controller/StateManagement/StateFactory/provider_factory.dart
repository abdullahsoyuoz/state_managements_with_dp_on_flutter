import 'package:state_managements/Controller/StateManagement/StateController/provider_controller.dart';
import 'package:state_managements/Controller/StateManagement/StateController/state_management_controller.dart';
import 'package:state_managements/Controller/StateManagement/StateFactory/state_management_factory.dart';
import 'package:state_managements/Controller/StateManagement/StateHandler/provider_handler.dart';
import 'package:state_managements/Controller/StateManagement/StateHandler/state_management_handler.dart';
import 'package:state_managements/View/Style/colors.dart';

class ProviderFactory implements StateManagementFactory {
  @override
  StateManagementController controller = ProviderController();

  @override
  StateManagementHandler handler = ProviderHandler();

  @override
  String package = "Provider";

  @override
  int index = 0;

  @override
  List colors = [SyzBaseColors.greyS3, SyzBaseColors.yellowS1, SyzBaseColors.blueS3];
}
