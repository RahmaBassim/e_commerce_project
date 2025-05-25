

import 'package:go_router/go_router.dart';
import 'package:project/config/routes/app_router.dart';

class NavigationService {
  navigateTo(String routeName, {dynamic arguments}) {
    GoRoute.of(AppRouter.appNavigatorKey.currentState!.context).p;
  }
}