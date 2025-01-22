import 'package:flutter/material.dart';

class WalletCard extends StatelessWidget {
  final String title;
  final String amount;
  final String subtitle;
  final Color? subtitleColor;
  final String imageUrl; // Added imageUrl parameter

  const WalletCard({
    required this.title,
    required this.amount,
    required this.subtitle,
    this.subtitleColor,
    required this.imageUrl, // Added imageUrl parameter
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    imageUrl,
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: 12,
                        color: subtitleColor ?? Colors.black54,
                      ),
                    ),
                  ],
                ),
                Spacer(), // Spacer between text and amount
                // Amount placed after title and subtitle
                Text(
                  amount,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
