import 'package:flutter/material.dart';
import '../models/product.dart';

class DetailScreen extends StatelessWidget {
  final Product product;
  final VoidCallback onAddToCart;

  const DetailScreen({
    super.key,
    required this.product,
    required this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ürün Detayı'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Center(
              child: Container(
                height: 260,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.network(
                  product.image,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 24),
            
            Chip(
              label: Text(product.category.toUpperCase()),
              backgroundColor: Theme.of(context).colorScheme.primaryContainer,
            ),
            const SizedBox(height: 12),
            
            Text(
              product.title,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            
            Text(
              '\$${product.price.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w900,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Açıklama',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              product.description,
              style: TextStyle(fontSize: 14, color: Colors.grey[700], height: 1.5),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            ),
            onPressed: () {
              onAddToCart();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('${product.title} sepete eklendi!'),
                  duration: const Duration(seconds: 1),
                ),
              );
            },
            icon: const Icon(Icons.shopping_bag),
            label: const Text('Sepete Ekle', style: TextStyle(fontSize: 16)),
          ),
        ),
      ),
    );
  }
}