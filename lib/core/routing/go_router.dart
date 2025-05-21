import 'package:envc/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    routes: [GoRoute(path: '/', builder: (context, state) => OnboardingView())],
  );
}
