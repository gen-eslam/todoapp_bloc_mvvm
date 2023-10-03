
import 'package:go_router/go_router.dart';
import 'package:task_manager/feature/home/view/home_view.dart';

abstract class AppRouter {
  static const String homeView = "/";

  static final GoRouter goRouter = GoRouter(routes: [
    GoRoute(
      path: homeView,
      builder: (context, state) => const HomeView(),
    ),
  ]);
}
