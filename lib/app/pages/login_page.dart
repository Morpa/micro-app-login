import 'package:flutter/material.dart';
import 'package:micro_commons_design_system/micro_commons_design_system.dart';
import 'package:micro_core/micro_core.dart';

class LoginPage extends StatelessWidget {
  final String _appName = const String.fromEnvironment('DEFINE_APP_NAME');
  final String _suffixName = const String.fromEnvironment('DEFINE_SUFFIX_NAME');
  final String _server = const String.fromEnvironment('DEFINE_SERVER');

  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              _appName,
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              _suffixName,
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              _server,
              style: const TextStyle(fontSize: 20),
            ),
            CustomButtonWidget(
              text: 'goToHome',
              onPressed: () => navigatorKey.currentState?.pushNamed('/home'),
            ),
          ],
        ),
      ),
    );
  }
}
