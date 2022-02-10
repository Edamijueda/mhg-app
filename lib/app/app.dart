// This class StackedApp takes in a list of route which uses d same route dart d
// auto_route package has defined, with slight name changes.
import 'package:mhg/ui/views/account_settings/account_settings_view.dart';
import 'package:mhg/ui/views/cart/cart_view.dart';
import 'package:mhg/ui/views/customer_home/customer_home_view.dart';
import 'package:mhg/ui/views/help/help_view.dart';
import 'package:mhg/ui/views/order_history/order_history_view.dart';
import 'package:mhg/ui/views/retail_home/retailer_home_view.dart';
import 'package:mhg/ui/views/saved_items/saved_items_view.dart';
import 'package:mhg/ui/views/signup_view.dart';
import 'package:mhg/ui/views/user_access_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(
      page: UserAccessView,
      initial: true,
    ),
    MaterialRoute(
      page: SignUpView,
    ),
    MaterialRoute(
      page: CustomerHomeView,
    ),
    MaterialRoute(
      page: RetailerHomeView,
    ),
    MaterialRoute(
      page: SavedItemsView,
    ),
    MaterialRoute(
      page: AccountSettingsView,
    ),
    MaterialRoute(
      page: CartView,
    ),
    MaterialRoute(
      page: HelpView,
    ),
    MaterialRoute(
      page: OrderHistoryView,
    ),
  ],
  dependencies: [
    LazySingleton(
      classType: NavigationService,
    ),
  ],
)
class AppSetUp {
  // Serves no purpose at the moment besides having an annotation attached

}
