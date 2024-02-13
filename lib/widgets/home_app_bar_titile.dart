import 'package:flutter/material.dart';
import 'package:my_wallet_flutter/design/colors.dart';


class HomeAppBarTitle extends StatelessWidget {
  const HomeAppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
            children: [
              Container(
                width: 40,
                height: 40,
                margin: const EdgeInsets.only(right: 12),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    image: DecorationImage(
                        image: AssetImage('assets/images/perfil.jpg')
                    )
                ),
              ),
              Expanded(
                child: Text(
                  'Wallet Flutter',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
              ContainerHeaderIcon(
                configMargin: const EdgeInsets.only(right: 12),
                iconButton: IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.notifications, color: WalletColors.primaryColor,),
                  ), 
              ),
              ContainerHeaderIcon(
                iconButton: IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.more_vert, color: WalletColors.primaryColor,),
                  ), 
              )
            ],
          );
  }
}

class ContainerHeaderIcon extends StatelessWidget {
  final IconButton iconButton;
  final EdgeInsets? configMargin;
  const ContainerHeaderIcon({
    super.key, 
    required this.iconButton, 
    this.configMargin});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      margin: configMargin,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        border: Border.all(color: WalletColors.primaryColor),
      ),
      child: iconButton,
    );
  }
}
