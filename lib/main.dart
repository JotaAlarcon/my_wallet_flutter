import 'package:flutter/material.dart';
import 'package:my_wallet_flutter/design/colors.dart';
import 'package:my_wallet_flutter/design/themes/default_theme_wallet.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: DefaultThemeWallet.defaultTheme,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Wallet Flutter'),
          backgroundColor: WalletColors.primaryColor,
        ),
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
