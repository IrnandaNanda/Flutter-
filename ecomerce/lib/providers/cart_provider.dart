import 'package:flutter/foundation.dart';
import '../models/product.dart';

class CartItem {
  final Product product;
  int quantity;

  CartItem({required this.product, this.quantity = 1});

  double get totalPrice => product.price * quantity;
}

class CartProvider extends ChangeNotifier {
  final List<CartItem> _items = [];

  List<CartItem> get items => _items;

  int get itemCount => _items.fold(0, (sum, item) => sum + item.quantity);

  double get totalAmount => _items.fold(0.0, (sum, item) => sum + item.totalPrice);

  void addItem(Product product) {
    int index = _items.indexWhere((item) => item.product.id == product.id);
    if (index >= 0) {
      _items[index].quantity += 1;
    } else {
      _items.add(CartItem(product: product));
    }
    notifyListeners();
  }

  void removeItem(int productId) {
    _items.removeWhere((item) => item.product.id == productId);
    notifyListeners();
  }

  void decreaseQuantity(int productId) {
     int index = _items.indexWhere((item) => item.product.id == productId);
     if (index >= 0) {
       if (_items[index].quantity > 1) {
         _items[index].quantity -= 1;
       } else {
         _items.removeAt(index);
       }
       notifyListeners();
     }
  }

  void clearCart() {
    _items.clear();
    notifyListeners();
  }
}
