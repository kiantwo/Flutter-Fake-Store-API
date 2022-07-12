class Cart {
  int id;
  int userId;
  DateTime date;
  Map<int, dynamic> products;

  Cart({
    required this.id,
    required this.userId,
    required this.date,
    required this.products,
  });

  factory Cart.fromJson(Map<String, dynamic> data) {
    return Cart(
      id: data['id'],
      userId: data['userId'],
      date: data['date'],
      products: data['products'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'date': date,
      'products': products,
    };
  }
}
