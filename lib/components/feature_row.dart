import 'package:flutter/material.dart';

import 'icon_with_lable.dart';

class FeaturesRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FeatureIconWithLabel(
            icon: Icons.account_balance_wallet, label: 'Udhar'),
        FeatureIconWithLabel(icon: Icons.payments, label: 'CP EMI'),
        FeatureIconWithLabel(icon: Icons.business, label: 'Business Funds'),
      ],
    );
  }
}
