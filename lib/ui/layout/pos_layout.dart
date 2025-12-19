import 'package:flutter/material.dart';
import '../../features/products/product_screen.dart';
import '../../features/cart/cart_screen.dart';

class PosLayout extends StatelessWidget {
  const PosLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Coffee Shop POS')),
      body: Row(
        children: const [
          Expanded(flex: 3, child: ProductScreen()),
          VerticalDivider(),
          Expanded(flex: 2, child: CartScreen()),
        ],
      ),
    );
  }
}
