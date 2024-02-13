import 'package:flutter/material.dart';
import 'package:my_wallet_flutter/design/themes/default_theme_wallet.dart';
import 'package:my_wallet_flutter/pages/home_page.dart';


class WalletApp extends StatelessWidget {
  const WalletApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: DefaultThemeWallet.defaultTheme,
      home: const HomePage()
    );
  }
}