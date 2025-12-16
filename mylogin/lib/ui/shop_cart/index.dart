import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import '../../model/product.dart';

class ShopCartPage extends StatelessWidget {
  const ShopCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final List<String> items = [
    //   'Item 1',
    //   'Item 2',
    //   'Item 3',
    //   'Item 4',
    //   'Item 5',
    //   'Item 6',
    //   'Item 7',
    //   'Item 8',
    //   'Item 9',
    //   'Item 10',
    // ];
    // final List<int> prices = [
    //   100000,
    //   200000,
    //   250000,
    //   230000,
    //   150000,
    //   300000,
    //   350000,
    //   170000,
    //   320000,
    //   175000,
    // ];
    // final List<String> pictures = [
    // 'assets/images/product/sepatu_amble.jpg',
    // 'assets/images/product/sepatu_ardiles.jpg',
    // 'assets/images/product/sepatu_brodo.jpg',
    // 'assets/images/product/sepatu_buccheri.jpg',
    // 'assets/images/product/sepatu_eagle.jpg',
    // 'assets/images/product/sepatu_league.jpg',
    // 'assets/images/product/sepatu_piero.jpg',
    // 'assets/images/product/sepatu_puma.jpg',
    // 'assets/images/product/sepatu_reebok.jpg',
    // 'assets/images/product/sepatu_tomkins.jpg',
    // ];

    final List<Product> items = [
      Product(id: '1', name: 'Sepatu Amble', price: 100000,
      image: 'assets/images/product/sepatu_amble.jpg'),
      Product(id: '2', name: 'Sepatu Ardiles', price: 200000,
      image: 'assets/images/product/sepatu_ardiles.jpg'),
      Product(id: '3', name: 'Sepatu Brodo', price: 250000,
      image: 'assets/images/product/sepatu_brodo.jpg'),
      Product(id: '4', name: 'Sepatu Buccheri', price: 230000,
      image: 'assets/images/product/sepatu_buccheri.jpg'),
      Product(id: '5', name: 'Sepatu Eagle', price: 150000,
      image: 'assets/images/product/sepatu_eagle.jpg'),
      Product(id: '6', name: 'Sepatu League', price: 300000,
      image: 'assets/images/product/sepatu_league.jpg'),
      Product(id: '7', name: 'Sepatu Piero', price: 350000,
      image: 'assets/images/product/sepatu_piero.jpg'),
      Product(id: '8', name: 'Sepatu Puma', price: 170000,
      image: 'assets/images/product/sepatu_puma.jpg'),
      Product(id: '9', name: 'Sepatu Reebok', price: 320000,
      image: 'assets/images/product/sepatu_reebok.jpg'),
      Product(id: '10', name: 'Sepatu Tomkins', price: 175000,
      image: 'assets/images/product/sepatu_tomkins.jpg'),
    ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          tooltip: 'Back to Home',
          onPressed: () {},
        ),
        title: const Text('Shop Cart'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Column(
              children: [
                ListTile(
                  title: Text(items[index].name),
                  leading: Image.asset(
                    items[index].image,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                subtitle: Text(
                  'Rp ${items[index].price}',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {},
                ),
                const ShopCartItemQty()

                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class ShopCartItemQty extends StatefulWidget {
  const ShopCartItemQty({super.key});

  @override
  State<ShopCartItemQty> createState() => _ShopCartItemQtyState();
}

class _ShopCartItemQtyState extends State<ShopCartItemQty> {
  int _jml = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.remove),
          onPressed: () {
            setState(() {
              if (_jml > 1) {
                _jml--;
              }
            });
          },
        ),
        Text(
          _jml.toString(),
          style: const TextStyle(fontSize: 16),
        ),
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              _jml++;
            });
          },
        ),
      ],
    );
  }
}
