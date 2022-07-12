import 'dart:convert';

import 'package:fake_store/models/product.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'https://fakestoreapi.com';

  Future<List<Product>> getAllProducts() async {
    return http.get(Uri.parse('$baseUrl/products')).then((data) {
      final products = <Product>[];
      if (data.statusCode == 200) {
        final jsonData = json.decode(data.body);

        for (var product in jsonData) {
          products.add(Product.fromJson(product));
        }
      }
      return products;
    }).catchError((err) => print(err));
  }
}
