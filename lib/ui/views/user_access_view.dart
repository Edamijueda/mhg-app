import 'package:flutter/material.dart';
import 'package:mhg/constants.dart';
import 'package:mhg/core/models/user_access_view_model.dart';
import 'package:mhg/ui/theme/colours.dart';
import 'package:mhg/ui/theme/typography.dart';
import 'package:stacked/stacked.dart';
import 'helpers/reusable_widgets.dart';

class UserAccessView extends StatefulWidget {
  const UserAccessView({Key? key}) : super(key: key);

  @override
  _UserAccessViewState createState() => _UserAccessViewState();
}

class _UserAccessViewState extends State<UserAccessView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<UserAccessViewModel>.reactive(
      viewModelBuilder: () => UserAccessViewModel(),
      builder: (context, model, child) => GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'lib/assets/bg_image.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width,
                  maxHeight: MediaQuery.of(context).size.height,
                ),
                child: SingleChildScrollView(
                  reverse: true,
                  child: Column(
                    //mainAxisSize: MainAxisSize.max,
                    //crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 80.0,
                      ),
                      Text(
                        appName,
                        style: appNameTextStyle,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        appMotto,
                        style: tosTextStyleWhiteReg9,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 160.0,
                      ),
                      buildCustomTextField(
                        hintText: emailHintText,
                        prefixIcon: buildIcon(icon: emailIcon, color: grey),
                        textInputType: TextInputType.emailAddress,
                      ),
                      buildCustomTextField(
                        hintText: passwordHintText,
                        prefixIcon: buildIcon(icon: passwordIcon, color: grey),
                        obscureText: true,
                      ),
                      Padding(
                        padding: paddingBottomOnly18,
                        child: TextButton(
                          onPressed: () =>
                              print('Forget password button pressed'),
                          child: customText(text: forgetPassword),
                        ),
                      ),
                      buildElevatedButton(textLabel: signIn),
                      /*Padding(
                        padding: symPaddingVert9Hor36,
                        child: ElevatedButton(
                          onPressed: () => model.goToNextScreen(),
                          //onPressed: () => print('SignIn button pressed'),
                          child: Text(signIn),
                        ),
                      ),*/
                      buildRowWithTextAndTB(
                        textLabel: didNotHaveAnyAcc,
                        textOnTB: signUpHere,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
