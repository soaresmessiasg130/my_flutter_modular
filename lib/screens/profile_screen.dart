import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen(
      {Key? key,
      required this.user,
      required this.role,
      required this.origin,
      this.message})
      : super(key: key);

  final String user, role;
  final String? origin, message;

  void _navigate() {
    Modular.to.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ProfileScreen',
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'This is the Profile Screen!!!',
              ),
              Text(
                'Username: $user',
              ),
              Text(
                'Role: $role',
              ),
              Text(
                'Origin Screen: $origin',
              ),
              Text(
                'Message: $message',
              ),
              ElevatedButton(
                onPressed: () => _navigate(),
                child: const Text(
                  'Close',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
