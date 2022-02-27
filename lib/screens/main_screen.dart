import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  void _navigate(String path) {
    Modular.to.pushNamed(path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MainScreen'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'This is the MainScreen!!!',
              ),
              ElevatedButton(
                onPressed: () => _navigate(
                  '/profile/messias/admin?origin=MainScreen&message=Never Gonna Give You Up',
                ),
                child: const Text(
                  'ProfileScreen',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
