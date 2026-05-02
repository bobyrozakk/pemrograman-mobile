import 'package:flutter/material.dart';

class Item {
  String name;
  int price;
  String image;
  int stock;
  double rating;

  Item({
    required this.name,
    required this.price,
    required this.image,
    required this.stock,
    required this.rating,
  });
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Item> items = [
      Item(
        name: 'Capucino',
        price: 5000,
        image: 'assets/images/produk1.jpg',
        stock: 10,
        rating: 4.5,
      ),
      Item(
        name: 'Flat White',
        price: 2000,
        image: 'assets/images/produk2.jpg',
        stock: 20,
        rating: 4.0,
      ),
      Item(
        name: 'Coffee',
        price: 10000,
        image: 'assets/images/produk4.jpg',
        stock: 15,
        rating: 4.8,
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Marketplace'), centerTitle: true),
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: items.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
        ),
        itemBuilder: (context, index) {
          final item = items[index];

          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/item', arguments: item);
            },
            child: Card(
              elevation: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Hero(
                      tag: item.name,
                      child: Image.asset(
                        item.image,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      item.name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text('Rp ${item.price}'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text('${item.rating} | Stok: ${item.stock}'),
                  ),
                ],
              ),
            ),
          );
        },
      ),

      bottomNavigationBar: const Padding(
        padding: EdgeInsets.all(8),
        child: Text(
          'Nama: Boby | NIM: 2341760162',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
