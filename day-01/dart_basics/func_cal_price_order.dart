double calculateOrderTotal({
  required double price,
  int quantity = 1,
  double discount = 0,
  double? shippingFee,
}) {
  final total = price * quantity;

  final discountAmount = total * discount / 100;

  final shipping = shippingFee ?? 0;

  return total - discountAmount + shipping;
}

void main() {
  final priceOrder = calculateOrderTotal(
    price: 100000,
    quantity: 2,
    discount: 10,
    shippingFee: 15000,
  );

  print(priceOrder);
}