import 'dart:convert';
import 'package:deli_dove/models/customer.dart';
import 'package:deli_dove/config.dart';
import 'package:deli_dove/models/category.dart';
import 'package:dio/dio.dart';
import 'dart:io';

import 'package:flutter/foundation.dart';

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

  createCustomer(CustomerModel model) async {
    _bypassSslVerificationForHttpClient();
    bool created = false;
    var token = Config.token;
    var dio = Dio();
    final url = Config.url + Config.customer;

    var data = model.toJson();

    var headers = {
      'Authorization': 'Basic $token',
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

  Future<List<ProductCategory>> fetchProductCategories() async {
    final url = Config.url + Config.productCat;
    final credential = Config.token;

    var header = {'Authorization': 'Basic $credential'};
    var dio = Dio();
    List<ProductCategory> productCategories = [];
    _bypassSslVerificationForHttpClient();

    try {
      var response = await dio.request(
        url,
        options: Options(
          method: 'GET',
          headers: header,
        ),
      );

      if (response.statusCode == 200) {
        
      
        // print(response.statusCode);
        // final jsonData = jsonDecode(response.data);

        // for (var categoryData in jsonData) {
        //   final category = ProductCategory.fromJson(categoryData);

        //   productCategories.add(category);
        // }
        //print(response.data);
        

        productCategories = (response.data as List)
            .map((i) => ProductCategory.fromJson(i))
            .toList();
       print(productCategories);    
        return productCategories;    
         
      } 

    } on DioException catch (e) {
      print(e.response);
    }
     throw Exception('Failed to fetch product categories');
  }
}
