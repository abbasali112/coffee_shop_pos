import 'package:coffee_shop_pos/features/billing/billing_screen.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(16),
          child: Text('Cart', style: TextStyle(fontSize: 20)),
        ),
        const Divider(),
        const Expanded(
          child: Center(child: Text('No items yet')),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const BillingScreen(),
                ),
              );
            },
            child: const Text('Abbas ali'),
          ),
        ),
      ],
    );
  }
}
