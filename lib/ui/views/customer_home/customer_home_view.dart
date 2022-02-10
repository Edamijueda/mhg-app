import 'package:flutter/material.dart';
import 'package:mhg/constants.dart';
import 'package:mhg/core/models/customer_home_view_model.dart';
import 'package:mhg/core/models/mhg_base_view_model.dart';
import 'package:mhg/ui/theme/colours.dart';
import 'package:mhg/ui/theme/typography.dart';
import 'package:stacked/stacked.dart';
import '../helpers/reusable_widgets.dart';
import '../reusable_views_components.dart';
import 'customer_home_components.dart';

class CustomerHomeView extends StatefulWidget {
  const CustomerHomeView({Key? key}) : super(key: key);

  @override
  _CustomerHomeViewState createState() => _CustomerHomeViewState();
}

class _CustomerHomeViewState extends State<CustomerHomeView> {
  final MhgBaseViewModel _mhgBaseViewModel = MhgBaseViewModel();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CustomerHomeViewModel>.reactive(
      viewModelBuilder: () => CustomerHomeViewModel(),
      builder: (context, model, child) => DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: backgroundColour,
          appBar: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            elevation: 0.0,
            title: MhgAppBarTitleWidget(),
            actions: <Widget>[
              IconButton(
                padding: const EdgeInsets.fromLTRB(
                    6.0, 2.0, 6.0, 2.0), //from default 8.0
                icon: buildIcon(icon: cartIcon, color: black),
                onPressed: () => _mhgBaseViewModel.goToCartScreen(),
              )
            ],
          ),
          drawer: NavDrawer(mhgBaseViewModel: _mhgBaseViewModel),
          body: SizedBox.expand(
            //height: 800.0,
            child: ListView(
              children: <Widget>[
                Container(
                  color: white,
                  child: build2ColumnTabBar(
                    text4column1: artworkTxt,
                    text4column2: deviceTxt,
                    textStyle: textStyleBlackBold16,
                  ),
                ),
                Build3ColumnTierTabBar(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
