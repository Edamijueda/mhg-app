import 'package:mhg/app/app.locator.dart';
import 'package:mhg/app/app.router.dart';
import 'package:mhg/constants.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class MhgBaseViewModel extends BaseViewModel {
  final navService = locator<NavigationService>();

  void validateScreenToNavTo({required String? eBText}) {
    if (eBText == signIn) {
      navService.navigateTo(Routes.customerHomeView);
    } else if (eBText == signUpHere) {
      navService.navigateTo(Routes.signUpView);
    } else if (eBText == signUpAsCustomer) {
      navService.navigateTo(Routes.customerHomeView);
    } else if (eBText == signUpAsRetailer) {
      navService.navigateTo(Routes.retailerHomeView);
    } else if (eBText == signInHere) {
      navService.navigateTo(Routes.userAccessView);
    } else {
      //navService.navigateTo(Routes.retailerHomeView);
      print('The button you click doesn\'t know d screen to navigateTo');
    }
  }
}
