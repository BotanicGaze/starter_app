import 'package:starter_app/global/global.dart';
import 'package:starter_app/page/error/error_page.dart';
import 'package:starter_app/page/home/home_page.dart';

class AppRouter {
  static String get homePage => '/home';
  static const String _homePath = '/';

  GoRouter router = GoRouter(
    initialLocation: _homePath,
    // turn off history tracking in the browser for all navigation
    // routerNeglect: true,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        name: homePage,
        path: _homePath,
        builder: (context, state) => const HomePage(),
      ),
    ],
    errorBuilder: (context, state) => ErrorPage(state.error!),
  );
}
