// If you use the stack package b4 now u will notice dat we use d AutoRoute package
// Dart is about 2 change & we wouldn't be using it anymore. It functionality has
// now been built in2 our stack package. The below info will now allow us to define
// our route for our app using our stack package with no external dependencies
import 'package:mhg/ui/views/customer_home_view.dart';
import 'package:mhg/ui/views/retailer_home_view.dart';
import 'package:mhg/ui/views/signup_view.dart';
import 'package:mhg/ui/views/user_access_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

// This class StackedApp takes in a list of route which uses d same route dart d
// auto_route package has defined, with slight name changes.
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
