import 'package:zeropay/Routes/router_names.dart';

import '../Services/navigation_service.dart';
import '../locator.dart';
import 'base_model.dart';

class RepaymentViewModel extends BaseModel {
  final NavigationService _navigationService = locator<NavigationService>();

  navigateToFrame80599() {
    _navigationService.navigateTo(frame80599Route);
  }
}
