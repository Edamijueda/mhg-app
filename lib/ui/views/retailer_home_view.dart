import 'package:flutter/material.dart';
import 'package:mhg/constants.dart';
import 'package:mhg/core/models/retailer_home_view_model.dart';
import 'package:mhg/core/models/user_access_view_model.dart';
import 'package:mhg/ui/theme/typography.dart';
import 'package:stacked/stacked.dart';
import 'helpers/reusable_widgets.dart';

class RetailerHomeView extends StatefulWidget {
  const RetailerHomeView({Key? key}) : super(key: key);

  @override
  _RetailerHomeViewState createState() => _RetailerHomeViewState();
}

class _RetailerHomeViewState extends State<RetailerHomeView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RetailerHomeViewModel>.reactive(
      viewModelBuilder: () => RetailerHomeViewModel(),
      builder: (context, model, child) => Scaffold(),
    );
  }
}
