import 'package:flutter/material.dart';
import 'package:profe/core/utils/validators.dart';
import 'package:profe/presentation/uikit/app_theme.dart';
import 'package:profe/presentation/uikit/components/vk_login_button.dart';
import 'package:profe/presentation/uikit/components/yandex_login_button.dart';
import 'package:profe/presentation/uikit/widgets/base_button.dart';
import 'package:profe/presentation/uikit/widgets/password_textfield.dart';
import 'package:profe/presentation/uikit/widgets/shallow_button.dart';
import 'package:profe/presentation/uikit/widgets/titled_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<StatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool submitEnabled = true;

  String? validateEmailMessage(String email) {
    if (validateEmail(email)) {
      return null;
    } else {
      return "E-mail неправильный";
    }
  }

  String? validatePasswordMessage(String password) {
    if (password.length < 6) {
      return "Password too short";
    } else {
      return null;
    }
  }

  void handleSubmit() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        submitEnabled = false;
      });
      await Future.delayed(const Duration(seconds: 2), () {});
      
      Navigator.pushNamed(context, '/home');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pure,
      body: Center(
        child: Padding(
          padding: EdgeInsetsGeometry.directional(start: AppDimensions.padding32, end: AppDimensions.padding32, top: AppDimensions.padding48),
          child: SingleChildScrollView(
            child: Column(
              spacing: AppDimensions.padding40,
              children: [
                Flex(
                  direction: Axis.vertical,
                  spacing: AppDimensions.padding16,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("🖐️ Добро пожаловать!", style: AppTexts.title1_Bold),
                    const Text("Войдите, чтобы пользоваться функциями приложения", style: AppTexts.text_Regular,),
                  ],
                ),

                Form(
                  key: _formKey,
                  child: Flex(
                    direction: Axis.vertical,
                    spacing: AppDimensions.padding8,
                    children: [
                      TitledTextField(labelText: "Вход по E-mail", hintText: "example@mail.com", validator: (value) {return validateEmailMessage(value.toString());}, controller: emailController,),
                      PasswordTextField(labelText: "Пароль", hintText: "", controller: passwordController, validator: (value) {if (value!.length > 6) { return null; } else { return "Пароль не достаточно надёжный"; } },),
                      BigButton(
                        onPressed: handleSubmit,
                        enabled: submitEnabled,
                        child: Text("Далее",style: TextStyle(color: AppColors.white)),
                      ),
                      ShallowButton()
                    ],
                  ),
                ),
                Flex(
                  direction: Axis.vertical,
                  spacing: AppDimensions.padding16,
                  children: [
                    Text("Или войдите с помощью", style: TextStyle(color: AppColors.caption),),
                    Flex(
                      direction: Axis.vertical,
                      spacing: AppDimensions.padding8,
                      children: [

                        VkLoginButton(onPressed: () {}),
                        YandexLoginButton(onPressed: () {})
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ),
      )
    );
  }
}