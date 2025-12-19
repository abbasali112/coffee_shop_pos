import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1.2,
      ),
      itemCount: 6,
      itemBuilder: (context, index) {
        return Card(
          child: Center(child: Text('Coffee ${index + 1}')),
        );
      },
    );
  }
}
