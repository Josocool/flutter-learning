void main() {
  // Product Information
  final productName = 'Jova Premium T-Shirt';
  final price = 290000;

  // Order Information
  final quantity = 3;
  final stock = 10;

  // Calculate Order
  final total = price * quantity;

  // Check Stock
  final isStockAvailable = quantity <= stock;

  print('Product: $productName');
  print('Price: $price LAK');
  print('Quantity: $quantity');
  print('Total: $total LAK');
  print('Stock Available: $isStockAvailable');
}
