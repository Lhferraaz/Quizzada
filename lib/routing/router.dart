import 'package:go_router/go_router.dart';
import 'package:quizzada/routing/routes.dart';
import 'package:quizzada/ui/auth/screens/cadastro_screen.dart';
import 'package:quizzada/ui/auth/screens/login_screen.dart';
import 'package:quizzada/ui/auth/screens/splash_screen.dart';
import 'package:quizzada/ui/gallery/gallery_screen.dart';
import 'package:quizzada/ui/home/screens/home_screen.dart';

final router = GoRouter(
  initialLocation: Routes.splash,
  routes: [
    GoRoute(
      path: Routes.splash,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(path: Routes.login, builder: (context, state) => LoginScreen()),
    GoRoute(path: Routes.singUp, builder: (context, state) => SingUpScreen()),
    GoRoute(path: Routes.home, builder: (context, state) => HomeScreen()),
    GoRoute(path: Routes.gallery, builder: (context, state) => GalleryScreen()),
  ],
);
