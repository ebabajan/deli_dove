import 'dart:convert';
import 'package:deli_dove/models/customer.dart';
import 'package:deli_dove/config.dart';
import 'package:deli_dove/models/category.dart';
import 'package:deli_dove/models/login.dart';
import 'package:dio/dio.dart';
import 'dart:io';
import 'package:deli_dove/models/products.dart';

class _MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

class APIService {
  void _bypassSslVerificationForHttpClient() {
    HttpOverrides.global = _MyHttpOverrides();
  }

  var dio = Dio();
  // Create new Customer

  createCustomer(CustomerModel model) async {
    _bypassSslVerificationForHttpClient();
    bool created = false;
    var token = Config.token;
    var dio = Dio();
    final url = Config.url + Config.customer;

    var data = model.toJson();

    var headers = {
      'Authorization': 'Basic $token',
      HttpHeaders.contentTypeHeader: "application/json"
    };

    var response = await dio.request(
      url,
      options: Options(
        method: 'POST',
        headers: headers,
      ),
      data: data,
    );

    if (response.statusCode == 200) {
      print(jsonEncode(response.data));
    } else {
      print(response.statusMessage);
    }
  }

// Get All the Categories.
  Future<List<ProductCategory>> fetchProductCategories() async {
    final url = Config.url + Config.productCat;
    final credential = Config.token;

    var header = {'Authorization': 'Basic $credential'};
    var dio = Dio();

    List<ProductCategory> productCategories = [];
    _bypassSslVerificationForHttpClient();

    try {
      final response = await dio.request(
        url,
        options: Options(
          method: 'GET',
          headers: header,
        ),
      );

      if (response.statusCode == 200) {
        // Decode the response data as a List
        final List<dynamic> data = response.data;

        // Assuming ProductCategory.fromJson method is defined
        productCategories =
            data.map((category) => ProductCategory.fromJson(category)).toList();
        return productCategories
            .where((category) => category.image != null)
            .toList();
      }
    } catch (error) {
      print('Error fetching product categories: $error');
    }
    throw Exception("Something went wrong");
  }

  // Login

  Future<LoginResponseModel> Login() async {
    final credential = Config.token;
    var data = {'username': 'ehsan', 'password': 'uzairEhsan1'};
    //var dio = Dio();
    var headers = {
      'Content-Type': 'application/x-www-form-urlencoded',
      'Authorization': 'Basic $credential'
    };

    // Call the Dio
    try {
      var response = await dio.request(
        'https://delidove.com/wp-json/jwt-auth/v1/token',
        options: Options(
          method: 'POST',
          headers: headers,
        ),
        data: data,
      );

      print('Response data: ${response.data}');
     // print('Response data type: ${response.data.runtimeType}');

      if (response.statusCode == 200) {
        var model = LoginResponseModel.fromJson(response.data);
        return model;
      }
    } catch (error) {
      return throw Exception("something went wrong in Login Page $error");
    }

    return throw Exception("something went wrong in Login Page");
  }

  // List all the products

  Future<List<Products>> fetchProducts() async {
    final url = Config.url + Config.products;
    final credential = Config.token;

    var header = {'Authorization': 'Basic $credential'};
    var dio = Dio();

    List<Products> products = [];
    _bypassSslVerificationForHttpClient();

    try {
      final response = await dio.request(
        url,
        options: Options(
          method: 'GET',
          headers: header,
        ),
      );

      if (response.statusCode == 200) {
        // Decode the response data as a List
        final List<dynamic> data = response.data;

        // Assuming ProductCategory.fromJson method is defined
        products = data.map((product) => Products.fromJson(product)).toList();
        // products.forEach((product) {
        //   print('Category ID: ${product.id}, Name: ${product.name}');
        //   if (product.images!= null) {
        //     print('Image Src: ${product.images}\n');
        //   }
        // });
        //print(products);
        return products.where((product) => product.images != null).toList();
      }
    } catch (error) {
      print('Error fetching product categories: $error');
    }
    throw Exception("Something went wrong in product");
  }
}
