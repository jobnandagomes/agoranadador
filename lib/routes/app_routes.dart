import 'package:flutter/material.dart';

import 'package:agoranadador/screens/home_page.dart';
import 'package:agoranadador/screens/add_swimmer_page.dart';

class AppRoutes {
static Map<String, WidgetBuilder> routes = {
'/': (context) => const HomePage(),
'/add': (context) => const AddSwimmerPage(),
};
}