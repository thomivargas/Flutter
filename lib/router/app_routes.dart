import 'package:flutter/material.dart';

import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'Listview1',
        name: 'Listview1 Screen',
        screen: const Listview1Screen(),
        icon: Icons.visibility),
    MenuOption(
        route: 'Listview2',
        name: 'Listview2 Screen',
        screen: const Listview2Screen(),
        icon: Icons.vape_free),
    MenuOption(
        route: 'alert',
        name: 'Alert Screen',
        screen: const AlertScreen(),
        icon: Icons.alarm_sharp),
    MenuOption(
        route: 'card',
        name: 'Card Screen',
        screen: const CardScreen(),
        icon: Icons.card_giftcard),
    MenuOption(
        route: 'avatar',
        icon: Icons.supervisor_account,
        name: 'Circle Avatar',
        screen: const AvatarScreen()),
    MenuOption(
        route: 'animated',
        icon: Icons.stay_primary_portrait_outlined,
        name: 'Animated',
        screen: const AnimatedScreen()),
    MenuOption(
        route: 'formulario',
        icon: Icons.login,
        name: 'Formulario',
        screen: const InputScreen())
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'Listview1': (BuildContext context) => const Listview1Screen(),
  //   'Listview2': (BuildContext context) => const Listview2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };
}
