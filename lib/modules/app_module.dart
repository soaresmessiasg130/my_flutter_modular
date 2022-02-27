import 'package:flutter_modular/flutter_modular.dart';
import 'package:my_flutter_modular/screens/main_screen.dart';
import 'package:my_flutter_modular/screens/profile_screen.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const MainScreen(),
        ),
        ChildRoute(
          '/profile/:user/:role',
          child: (context, args) => ProfileScreen(
            user: args.params['user'],
            role: args.params['role'],
            origin: args.queryParams['origin'],
            message: args.queryParams['message'],
          ),
        ),
      ];
}

class Utils {
  static String? getFromArgs(Map<String, dynamic> map, String key) {
    return map[key];
  }
}
