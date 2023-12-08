import 'dart:convert';
import 'package:deli_dove/models/customer.dart';
import 'package:deli_dove/config.dart';
import 'package:deli_dove/models/category.dart';
import 'package:dio/dio.dart';
import 'dart:io';
import 'package:http/http.dart' as http;

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

Future<List<ProductCategory>> 
   fetchProductCategories() async {
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
        productCategories = data.map((category) => ProductCategory.fromJson(category)).toList();
       
          // Print the decoded data
        // productCategories.forEach((category) {
        //   print('Category ID: ${category.id}, Name: ${category.name}');
        //   if (category.image != null) {
        //     print('Image Src: ${category.image!.src}');
        //   }
        // });
       
        return productCategories;
      }
    } catch (error) {
      print('Error fetching product categories: $error');
    }
    throw Exception("Something went wrong");
  } 
}
