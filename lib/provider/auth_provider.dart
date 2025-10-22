import 'package:flutter/material.dart';
import 'package:chatbox_app/core/constant/app_client.dart';

class AuthProvider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  bool isLoading = false;

  void register() async {
    try {
      isLoading = true;
      notifyListeners();
      await AppClient.client.post(
        "/auth/register/",
        body: {
          "email": emailController.text,
          "name": nameController,
          "password": passwordController,
          "confirmPassword": confirmPasswordController,
        },

        onDone: (res, error) {
          isLoading = false;
          notifyListeners();
          if (res.isSuccess) {
            print(res.data);
          }
        },
      );
    } on FlutterError catch (e) {
      print(e.message);
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  void login() async {
    isLoading = true;
    notifyListeners();
    await AppClient.client.post(
      "/auth/login/",
      body: {"email": emailController.text, "password": passwordController},

      onDone: (res, error) {
        isLoading = false;
        notifyListeners();
        if (res.isSuccess) {
          print(res.data);
        }
      },
    );
  }
}
