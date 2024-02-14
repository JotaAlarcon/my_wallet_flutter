import 'package:flutter/material.dart';
import 'package:my_wallet_flutter/design/colors.dart';
import 'package:my_wallet_flutter/widgets/custom_money_display.dart';

enum TypeSummaryCard { incomes, spending }

class SummaryCard extends StatelessWidget {
  final TypeSummaryCard typeSummaryCard;
  final double amount;
  final String period;
  final void Function()? action;

  const SummaryCard(
      {super.key,
      required this.typeSummaryCard,
      required this.amount,
      required this.period,
      this.action});

  @override
  Widget build(BuildContext context) {
    var incomesIcon = const Icon(
      Icons.arrow_upward,
      color: WalletColors.onSuccessColor,
    );
    var spendingIcon = const Icon(
      Icons.arrow_downward,
      color: WalletColors.onErrorColor,
    );
    return Container(
      height: 92,
      margin: const EdgeInsets.only(top: 8),
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(color: Colors.black12, offset: Offset(0.0, 5.0), blurRadius: 5.0)
          ],
          shape: BoxShape.rectangle,
          color: WalletColors.lightColorOpacity,
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          height: 40,
          width: 40,
          margin: const EdgeInsets.only(right: 8),
          decoration: const BoxDecoration(
            color: WalletColors.lightColor,
            borderRadius: BorderRadius.all(Radius.circular(8)),
            //border: Border.all(color: WalletColors.primaryColor),
          ),
          child: typeSummaryCard == TypeSummaryCard.incomes
              ? incomesIcon
              : spendingIcon,
        ),
        Expanded(
            child: Text(
          typeSummaryCard == TypeSummaryCard.incomes ? 'Ingresos' : 'Cargos',
          style: Theme.of(context).textTheme.displaySmall,
        )),
        Container(
          margin: const EdgeInsets.only(right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomMoneyDisplay(
                  amount: amount,
                  amountStyle: Theme.of(context).textTheme.displayMedium!,
                  amountStyleSmall: Theme.of(context).textTheme.displaySmall!),
              Padding(
                padding: const EdgeInsets.all(2.8),
                child: Text(
                  period,
                  style: const TextStyle(
                    color: WalletColors.lightColor,
                    fontFamily: 'RobotoMono',
                    fontSize: 10,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            border: Border.all(color: WalletColors.lightColor),
          ),
          child: IconButton(
            onPressed: action,
            icon: const Icon(Icons.chevron_right),
            color: WalletColors.lightColor,
          ),
        )
      ]),
    );
  }
}
