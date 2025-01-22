// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'components/activation_section.dart';
import 'components/card_status.dart';
import 'components/wallet_section.dart';

void main() {
  runApp(MaterialApp(
    home: CardWalletScreen(),
  ));
}

class CardWalletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card & Wallets'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.grey.shade100,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CardStatusSection(),
                SizedBox(height: 16),
                ActivationSection(),
                SizedBox(height: 16),
                WalletSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
