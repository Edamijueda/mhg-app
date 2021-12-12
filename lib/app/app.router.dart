// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../ui/views/customer_home_view.dart';
import '../ui/views/retailer_home_view.dart';
import '../ui/views/signup_view.dart';
import '../ui/views/user_access_view.dart';

class Routes {
  static const String userAccessView = '/';
  static const String signUpView = '/sign-up-view';
  static const String customerHomeView = '/customer-home-view';
  static const String retailerHomeView = '/retailer-home-view';
  static const all = <String>{
    userAccessView,
    signUpView,
    customerHomeView,
    retailerHomeView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.userAccessView, page: UserAccessView),
    RouteDef(Routes.signUpView, page: SignUpView),
    RouteDef(Routes.customerHomeView, page: CustomerHomeView),
    RouteDef(Routes.retailerHomeView, page: RetailerHomeView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    UserAccessView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const UserAccessView(),
        settings: data,
      );
    },
    SignUpView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const SignUpView(),
        settings: data,
      );
    },
    CustomerHomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const CustomerHomeView(),
        settings: data,
      );
    },
    RetailerHomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const RetailerHomeView(),
        settings: data,
      );
    },
  };
}
