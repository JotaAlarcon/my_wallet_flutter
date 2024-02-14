import 'package:flutter/material.dart';
import 'package:my_wallet_flutter/design/colors.dart';
import 'package:my_wallet_flutter/widgets/custom_money_display.dart';
import 'package:my_wallet_flutter/widgets/home_app_bar_titile.dart';
import 'package:my_wallet_flutter/widgets/type_summary_card.dart';

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
                bottomRight: Radius.circular(16))),
        title: const Padding(
          padding: EdgeInsets.fromLTRB(16, 45, 16, 12),
          child: HomeAppBarTitle(),
        ),
      ),
      body: const Column(children: [HomePageTopBody()]),
    );
  }
}

class HomePageTopBody extends StatelessWidget {
  const HomePageTopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width,
      transform: Matrix4.translationValues(0, -12, 0),
      decoration: const BoxDecoration(
          color: WalletColors.primaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          )),
      height: 389,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 56),
            child: Text(
              'Tu Saldo',
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ),
          CustomMoneyDisplay(
              amount: 1834677.00,
              amountStyle: Theme.of(context).textTheme.displayLarge!,
              amountStyleSmall: Theme.of(context).textTheme.displaySmall!),
          const SummaryCard(
              typeSummaryCard: TypeSummaryCard.incomes,
              amount: 200000.00,
              period: '10 de Febrero de 2024'),
              
          const SummaryCard(
              typeSummaryCard: TypeSummaryCard.spending,
              amount: 123990.00,
              period: '13 de Febrero de 2024')
        ],
      ),
    );
  }
}
