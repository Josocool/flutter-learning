void main() {
// this is traditional function 
  int calculateTotal(int price, int quantity) {
    return price * quantity;
  }
// this arrow function
  int calcTotal( int price , int quantity) => price * quantity;



//   โจทย์ที่ 2 — Arrow Function + Named Parameters
// เราต้องการสร้าง Function คำนวณราคาสินค้า Jova หลังหักส่วนลด

// เงื่อนไข
// 1. price ต้องเป็น double และ required
// 2. quantity ต้องเป็น int และมี Default Value = 1
// 3. discount ต้องเป็น double และมี Default Value = 0
// 4. คืนค่าราคาสุทธิหลังหักส่วนลด
// ตัวอย่างการเรียก:
// final result = calculateFinalPrice(
//   price: 290000,
//   quantity: 3,
//   discount: 10,
// );


// ผลลัพธ์ที่ต้องได้:
// 783000.0


  double calculateFinalPrice ({
    required double price,
    int quantity = 1,
    double? discount ,
  }) => (price * quantity) * (1 - (discount ?? 0) / 100) ;


final result = calculateFinalPrice(
  price: 290000,
  quantity: 3,
  discount: 10,
);

  print(result);
}
