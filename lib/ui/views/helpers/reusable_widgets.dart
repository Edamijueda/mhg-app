import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mhg/core/models/mhg_base_view_model.dart';
import 'package:mhg/ui/theme/colours.dart';
import 'package:mhg/ui/theme/typography.dart';
import '../../../constants.dart';

//UserAccessViewModel? userAccessViewModel;
final MhgBaseViewModel _mhgBaseViewModel = MhgBaseViewModel();

const IconData emailIcon = Icons.mail_outline_rounded;
const IconData passwordIcon = Icons.lock_outline_rounded;
const IconData nameIcon = Icons.person;
const IconData usernameIcon = Icons.account_circle;
const IconData helpIcon = Icons.help;
const IconData dobIcon = Icons.cake;
const IconData validIdIcon = Icons.badge;
const IconData businessNameIcon = Icons.business_center;
const IconData businessLNIcon = Icons.pin;
const IconData menuIcon = Icons.menu_open;
const IconData cartIcon = Icons.shopping_cart_outlined;

/*const Padding symPaddingVert9Hor36 = Padding(
  padding: EdgeInsets.symmetric(
    vertical: 9.0,
    horizontal: 36.0,
  ),
);*/

const EdgeInsets symPaddingVert8Hor36 = EdgeInsets.symmetric(
  vertical: 8.0,
  horizontal: 36.0,
);

const EdgeInsets paddingFromL36T18R36B9 =
    EdgeInsets.fromLTRB(36.0, 18.0, 36.0, 9.0);

/*const EdgeInsets paddingFromL36T9R36B18 =
EdgeInsets.fromLTRB(36.0, 9.0, 36.0, 18.0);*/

const EdgeInsets paddingBottomOnly18 = EdgeInsets.only(bottom: 9.0);

/*symmetric(
  vertical: 18.0,
  horizontal: 36.0,
);*/

RoundedRectangleBorder rRectWithCircularBR10 = RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(10.0),
);

Icon buildIcon({
  required IconData icon,
  required Color color,
  double? size,
}) {
  return Icon(
    icon,
    color: color,
    size: size,
    //size: prefixIconSize,
  );
}

Widget buildCustomTextField({
  required String hintText,
  required Widget prefixIcon,
  TextInputType? textInputType,
  final bool obscureText = false,
}) {
  return Padding(
    padding: symPaddingVert8Hor36,
    child: SizedBox.fromSize(
      size: size,
      child: TextField(
        keyboardType: textInputType,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: prefixIcon,
        ),
      ),
    ),
  );
}

///////////////////////////////////////////////////////////////////////

Widget buildTabRowLabel({
  required String textLabel,
  required TextStyle style,
  IconButton? includeIconBtn,
}) {
  return ListTile(
    contentPadding: EdgeInsets.symmetric(horizontal: 0.0),
    horizontalTitleGap: 0.0,
    minLeadingWidth: 0.0,
    title: Center(
      child: customTextPlusStyle(
        text: textLabel,
        textStyle: style,
      ),
    ),
    trailing: includeIconBtn,
  );

  /*return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(
        textLabel,
        style: textStyleWhiteBold16,
      ),
      includeIconBtn,
      */ /* helpIconButton(
        consoleOutput: cusAndRetIconBtHelpText,
        color: white,
      ),*/ /*
    ],
  );*/
}

//////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////

const List<String> customerTVHintTexts = [
  nameHintText,
  usernameHintText,
  emailHintText,
  dobHintText,
  passwordHintText,
];

const List<String> retailerTVHintTexts = [
  bizOwnerHintText,
  businessNameHintText,
  emailHintText,
  businessLNHintText,
  passwordHintText,
];

const List<IconData> customerTVIcons = [
  nameIcon,
  usernameIcon,
  emailIcon,
  dobIcon,
  passwordIcon,
];

const List<IconData> retailerTVIcons = [
  nameIcon,
  businessNameIcon,
  emailIcon,
  businessLNIcon,
  passwordIcon,
];

const List<TextInputType>? tabViewTextInputTypes = [
  TextInputType.name,
  TextInputType.emailAddress,
];

//////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////

Column buildTabBarView({
  required List<String> hintTextList,
  required List<IconData> prefixIconList,
  List<TextInputType>? textInputTypeList,
  required String textOnEB,
  //required SignUpViewModel signUpViewModel,
}) {
  return Column(
    children: <Widget>[
      buildCustomTextField(
        hintText: hintTextList[0],
        prefixIcon: buildIcon(
            icon: prefixIconList[0], color: grey, size: prefixIconSize),
        textInputType: textInputTypeList![0],
      ),
      buildCustomTextField(
        hintText: hintTextList[1],
        prefixIcon: buildIcon(
            icon: prefixIconList[1], color: grey, size: prefixIconSize),
      ),
      buildCustomTextField(
        hintText: hintTextList[2],
        prefixIcon: buildIcon(
            icon: prefixIconList[2], color: grey, size: prefixIconSize),
        textInputType: textInputTypeList[1],
      ),
      buildCustomTextField(
        hintText: hintTextList[4],
        prefixIcon: buildIcon(
            icon: prefixIconList[4], color: grey, size: prefixIconSize),
      ),
      buildCustomTextField(
        hintText: hintTextList[3],
        prefixIcon: buildIcon(
            icon: prefixIconList[3], color: grey, size: prefixIconSize),
        obscureText: true,
      ),
      Container(
        margin: symPaddingVert8Hor36,
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // The padding for the input decoration's container
            // If `isOutline` property of [border] is false and
            // if [filled] is true then `contentPadding` is
            // `EdgeInsets.fromLTRB(12, 8, 12, 8)`
            Padding(
              padding: const EdgeInsets.only(
                left: 12.0,
                top: 8.0,
                right: 12.0,
                bottom: 8.0,
              ),
              child: buildIcon(
                icon: validIdIcon,
                color: grey,
                size: prefixIconSize,
              ),
            ),
            Text(
              validIdHintText,
              style: hintTextStyle,
            ),
            SizedBox(
              width: 66.0,
            ),
            ElevatedButton(
              onPressed: () => print('Upload button pressed'),
              child: Text(upload),
              style: ElevatedButton.styleFrom(
                minimumSize: overrideMinSize,
                fixedSize: uploadBtSize,
                shape: rRectWithCircularBR10,
                textStyle: uploadEBTextStyle,
              ),
            ),
            buildIconButton(
              padding: const EdgeInsets.all(8.0), // default from flutter
              icon: buildIcon(icon: helpIcon, color: grey, size: iconBtnSize),
              onClickPrintOnConsole: validIdIconBtHelpText,
            ),
          ],
        ),
      ),
      Padding(
        padding: paddingFromL36T18R36B9,
        child: RichText(
          text: TextSpan(
            text: tOSText,
            style: tosTextStyleWhiteReg9,
            children: <TextSpan>[
              TextSpan(
                text: 'Membership Agreement ',
                style: TextStyle(color: Colors.yellow),
              ),
              TextSpan(text: 'and '),
              TextSpan(
                text: 'Privacy Policy.',
                style: TextStyle(color: Colors.yellow),
              ),
            ],
          ),
        ),
      ),
      buildElevatedButton(textLabel: textOnEB),
    ],
  );
}

//////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////

Padding buildElevatedButton({
  required String textLabel,
  //SignUpViewModel signUpViewModel,
}) {
  return Padding(
    padding: symPaddingVert8Hor36,
    child: ElevatedButton(
      onPressed: () =>
          _mhgBaseViewModel.validateScreenToNavTo(eBText: textLabel),
      //onPressed: () => print('SignIn button pressed'),
      child: Text(textLabel),
    ),
  );
}

//////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////

Row buildRowWithTextAndTB({
  required String textLabel,
  required String textOnTB,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      customTextPlusStyle(text: textLabel, textStyle: textStyleWhiteNormal14),
      TextButton(
        onPressed: () =>
            _mhgBaseViewModel.validateScreenToNavTo(eBText: textOnTB),
        style: TextButton.styleFrom(
          primary: primaryColour,
        ),
        child: Text(
          textOnTB,
          style: TextStyle(
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    ],
  );
}

//////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////

Text customTextPlusStyle({
  required String text,
  required TextStyle textStyle,
}) {
  return Text(
    text,
    style: textStyle,
  );
}

//////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////

Text customText({
  required String text,
}) {
  return Text(
    text,
  );
}

//////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////

class MhgAppBarTitleWidget extends StatelessWidget {
  const MhgAppBarTitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          width: 45.0,
        ),
        Image(
          image: ExactAssetImage(
            'lib/assets/app_icon.png',
          ),
          height: 26.0,
          width: 26.0,
        ),
        Text(
          displayedAppName,
          style: textStyleWhiteBold14,
        ),
      ],
    );
  }
}

//////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////

IconButton buildIconButton({
  required Widget icon,
  required String onClickPrintOnConsole,
  required EdgeInsetsGeometry padding,
}) {
  return IconButton(
    padding: padding,
    icon: icon,
    onPressed: () => print(onClickPrintOnConsole),
  );
}

//////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////

TabBar build2ColumnTabBar({
  required String text4column1,
  required String text4column2,
  required TextStyle textStyle,
  IconButton? iconButton,
  //required Color labelColour,
}) {
  return TabBar(
    labelPadding: EdgeInsets.only(left: 32.0, right: 32.0),
    //padding: EdgeInsets.symmetric(horizontal: 16.0),
    tabs: <Widget>[
      Center(
        child: Tab(
          child: buildTabRowLabel(
            textLabel: text4column1,
            style: textStyle,
            includeIconBtn: iconButton,
            /*includeIconBtn: buildIconButton(
              icon: buildIcon(icon: helpIcon, color: white, size: iconBtnSize),
              onClickPrintOnConsole: customerIconBtnHelpText,
            ),*/
          ),
        ),
      ),
      Center(
        child: Tab(
          child: buildTabRowLabel(
            textLabel: text4column2,
            style: textStyle,
            includeIconBtn: iconButton,
            /*includeIconBtn: buildIconButton(
              icon: buildIcon(icon: helpIcon, color: white, size: iconBtnSize),
              onClickPrintOnConsole: retailerIconBtHelpText,
            ),*/
          ),
        ),
      ),
    ],
  );
}

//////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////
