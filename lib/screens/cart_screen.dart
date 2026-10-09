import 'package:flutter/material.dart';
import '../models/product.dart';

class CartScreen extends StatelessWidget {
  final List<Product> cartItems;
  final Function(Product) onRemoveFromCart;

  const CartScreen({
    super.key,
    required this.cartItems,
    required this.onRemoveFromCart,
  });

  @override
  Widget build(BuildContext context) {
    final double totalPrice = cartItems.fold(0.0, (sum, item) => sum + item.price);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sepetim'),
      ),
      body: cartItems.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_cart_outlined, size: 80, color: Colors.grey[400]),
                  const SizedBox(height: 16),
                  const Text(
                    'Sepetiniz şu anda boş',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.grey),
                  ),
                ],
              ),
            )
          : Column(
              children: [
                Expanded(
                  child: ListView.separated(
                    padding: const EdgeInsets.all(16),
                    itemCount: cartItems.length,
                    separatorBuilder: (context, index) => const Divider(),
                    itemBuilder: (context, index) {
                      final item = cartItems[index];
                      return ListTile(
                        leading: Container(
                          width: 50,
                          height: 50,
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Image.network(item.image, fit: BoxFit.contain),
                        ),
                        title: Text(item.title, maxLines: 1, overflow: TextOverflow.ellipsis),
                        subtitle: Text('\$${item.price.toStringAsFixed(2)}'),
                        trailing: IconButton(
                          icon: const Icon(Icons.delete_outline, color: Colors.red),
                          onPressed: () => onRemoveFromCart(item),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: const Offset(0, -4),
                        blurRadius: 10,
                      )
                    ],
                  ),
                  child: SafeArea(
                    child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text('Toplam Tutar', style: TextStyle(color: Colors.grey)),
                            Text(
                              '\$${totalPrice.toStringAsFixed(2)}',
                              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
                          ),
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Sipariş başarıyla simüle edildi!')),
                            );
                          },
                          child: const Text('Satın Al'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}