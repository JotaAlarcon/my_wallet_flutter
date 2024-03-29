import 'package:flutter/material.dart';
import 'package:my_wallet_flutter/design/colors.dart';

class DefaultThemeWallet {
  DefaultThemeWallet._();
  static ThemeData defaultTheme = ThemeData(
    fontFamily: 'RobotoMono',
    primaryColor: WalletColors.primaryColor,
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 48.0, fontWeight: FontWeight.bold, color: WalletColors.lightColor),
      displayMedium: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: WalletColors.lightColor),
      displaySmall: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: WalletColors.lightColor),
      headlineLarge: TextStyle(fontSize: 21.0, color: WalletColors.primaryColor),
      bodyLarge: TextStyle(fontSize: 14.0),
      bodyMedium: TextStyle(fontSize: 13.0),
      bodySmall: TextStyle(fontSize: 10.0),
    )
  );
}
