import 'package:flutter/material.dart';
import 'home_page.dart'; // ambil class Item dari sini

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final item = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(title: Text(item.name)),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: item.name,
              child: Image.asset(
                item.image,
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                item.name,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Rp ${item.price}',
                style: const TextStyle(fontSize: 18, color: Colors.green),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Text('Rating: ${item.rating}'),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text('Stok tersedia: ${item.stock}'),
            ),
          ],
        ),
      ),
    );
  }
}
