import 'package:flutter/material.dart';

class WalletCard extends StatelessWidget {
  final String title;
  final String amount;
  final String subtitle;
  final Color? subtitleColor;

  const WalletCard({
    required this.title,
    required this.amount,
    required this.subtitle,
    this.subtitleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: 14,
                        color: subtitleColor ?? Colors.black54,
                      ),
                    ),
                  ],
                ),
                Text(
                  amount,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    TextButton(onPressed: () {}, child: Text('Withdraw')),
                    SizedBox(width: 8),
                    TextButton(onPressed: () {}, child: Text('Transfer')),
                    SizedBox(width: 8),
                    TextButton(onPressed: () {}, child: Text('More')),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
