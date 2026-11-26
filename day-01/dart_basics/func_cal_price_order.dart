void main() {

double calculateOrderTotal({
  // เขียน Parameters ตรงนี้
	required double price,
	int quantity = 1,
	int discount = 0,
	double? shippingFee,
}) {
  // 1. คำนวณราคารวม
   final total = price * quantity;
  // 2. คำนวณส่วนลด
   final disAmount = total * discount / 100;
  // 3. จัดการค่าจัดส่ง
  final ship = shippingFee ?? 0;
  // 4. return ราคาสุทธิ
  return total - disAmount + ship;
 }

 final price_order = (calculateOrderTotal(
  price: 100000,
  quantity: 2,
  discount: 10,
  shippingFee: 15000,
 ));
 print(price_order);
}