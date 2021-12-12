import 'package:flutter/material.dart';
import 'package:mhg/constants.dart';
import 'package:mhg/core/models/customer_home_view_model.dart';
import 'package:mhg/ui/theme/colours.dart';
import 'package:mhg/ui/theme/typography.dart';
import 'package:stacked/stacked.dart';
import 'helpers/reusable_widgets.dart';

class CustomerHomeView extends StatefulWidget {
  const CustomerHomeView({Key? key}) : super(key: key);

  @override
  _CustomerHomeViewState createState() => _CustomerHomeViewState();
}

class _CustomerHomeViewState extends State<CustomerHomeView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CustomerHomeViewModel>.reactive(
      viewModelBuilder: () => CustomerHomeViewModel(),
      builder: (context, model, child) => DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: backgroundColour,
          appBar: AppBar(
            //systemOverlayStyle: ,
            /*systemOverlayStyle:
                SystemUiOverlayStyle(statusBarColor: Colors.red),*/
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            elevation: 0.0,
            leading: buildIconButton(
              padding: const EdgeInsets.all(8.0), //default from flutter
              icon: buildIcon(icon: menuIcon, color: black),
              onClickPrintOnConsole: 'MenuIconButton is pressed',
            ),
            title: MhgAppBarTitleWidget(),
            actions: <Widget>[
              buildIconButton(
                padding: const EdgeInsets.all(4.0), //from default 8.0
                icon: buildIcon(icon: cartIcon, color: black),
                onClickPrintOnConsole: 'CartIconButton is pressed',
              ),
            ],
          ),
          body: ListView(
            children: <Widget>[
              Container(
                color: white,
                child: build2ColumnTabBar(
                  text4column1: artworkTxt,
                  text4column2: deviceTxt,
                  textStyle: textStyleBlackBold16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
