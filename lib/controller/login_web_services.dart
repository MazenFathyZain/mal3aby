import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mal3aby/view/club.dart';

import 'package:dio/dio.dart';

class LoginWebServices {
  final isLoading = false.obs;

  Future login(String password, String email) async {
    isLoading.value = true;
    try {
      final data = {"email": email, "password": password};
      final dio = Dio();
      var response;
      response = await dio.post('http://localhost:8000/api/signin', data: data);
      if (response.statusCode == 200) {
        Get.off(() => const Club());
        await Future.delayed(const Duration(seconds: 2));

        // Login successful
        isLoading.value = false;
      } else {
        isLoading.value = false;
        print('Sign-in failed');
        final responseData = response.data as Map<String, dynamic>;
        final errorMessage = responseData['message'] as String;
        Get.snackbar(
          'Error',
          errorMessage,
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
      isLoading.value = false;
    } catch (e) {
      // print('Error occurred: $e');
        isLoading.value = false;
      Get.snackbar(
        'Error',
        'An error occurred during sign-in.',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.black45,
        colorText: Colors.white,
      );
    }
  }
}
