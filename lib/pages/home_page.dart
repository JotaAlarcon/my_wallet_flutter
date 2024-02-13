import 'package:flutter/material.dart';
import 'package:my_wallet_flutter/design/colors.dart';
import 'package:my_wallet_flutter/widgets/home_app_bar_titile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 97,
        backgroundColor: WalletColors.lightColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(16), 
            bottomRight: Radius.circular(16))
            ),
        title: const Padding(
          padding:  EdgeInsets.fromLTRB(16, 45, 16, 12),
          child:  HomeAppBarTitle(),
        ),
      ),
      body: const Center(
        child: Text('Hello World!'),
      ),
    );
  }
}

