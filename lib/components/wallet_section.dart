import 'package:flutter/material.dart';

import 'wallet_card.dart';

class WalletSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WalletCard(
          title: 'Lifeline Card Wallet',
          amount: '4356',
          subtitle: 'Upcoming EMI/Udhar',
          imageUrl: 'assets/images/wallet_icon.png',
        ),
        WalletCard(
          title: 'Lifeline Coin',
          amount: '4356',
          subtitle: 'Lifeline Magic Coin',
          imageUrl: 'assets/images/wallet_icon.png',
        ),
        WalletCard(
          title: 'Cashback Coin',
          amount: '4356',
          subtitle: 'Add Credit Coin',
          subtitleColor: Colors.red,
          imageUrl: 'assets/images/wallet_icon.png',
        ),
      ],
    );
  }
}
