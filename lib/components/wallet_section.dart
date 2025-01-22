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
        ),
        WalletCard(
          title: 'Lifeline Coin',
          amount: '4356',
          subtitle: 'Lifeline Magic Coin',
        ),
        WalletCard(
          title: 'Cashback Coin',
          amount: '4356',
          subtitle: 'Add Credit Coin',
          subtitleColor: Colors.red,
        ),
      ],
    );
  }
}
