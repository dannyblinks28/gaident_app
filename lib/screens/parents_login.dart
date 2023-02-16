import 'package:flutter/material.dart';
import 'package:proprietor_app/constants/colors.dart';
import 'package:proprietor_app/screens/Parents/home_parents.dart';
import 'package:proprietor_app/utils/screen_navigator.dart';
import 'package:proprietor_app/utils/widgets/TaxiButton.dart';
import 'package:proprietor_app/utils/widgets/myTextField.dart';

import 'forgot_password.dart';

class ParentsLogin extends StatefulWidget {
  const ParentsLogin({super.key});

  @override
  State<ParentsLogin> createState() => _ParentsLoginState();
}

class _ParentsLoginState extends State<ParentsLogin> {
  late final _emailController = TextEditingController();
  late final _passwordController = TextEditingController();
  bool _isObsecure = true;
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                Container(
                  width: 200,
                  child: Text(
                    'Enter yout login details',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'Email/Username',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 5),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: ConstantColors.textFieldColor,
                        width: 1,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: ConstantColors.textFieldColor,
                        width: 1,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: ConstantColors.textFieldColor,
                        width: 1,
                      ),
                    ),
                    hintText: 'e.g john doe',
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 5),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isObsecure = !_isObsecure;
                        });
                      },
                      icon: Icon(
                        _isObsecure ? Icons.visibility : Icons.visibility_off,
                        color: ConstantColors.textFieldColor,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: ConstantColors.textFieldColor,
                        width: 1,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: ConstantColors.textFieldColor,
                        width: 1,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: ConstantColors.textFieldColor,
                        width: 1,
                      ),
                    ),
                    hintText: '..............',
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Checkbox(
                      value: _isChecked,
                      onChanged: (value) {
                        _isChecked = !_isChecked;
                        setState(() {});
                      },
                    ),
                    Text('Remember me')
                  ],
                ),
                SizedBox(height: 40),
                TaxiButton(
                  title: 'Log In',
                  onPressed: () {
                    nextScreenReplace(
                      context,
                      HomeParents(),
                    );
                  },
                ),
                Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        nextScreen(
                          context,
                          ForgotPassword(),
                        );
                      },
                      child: Text(
                        'Forgot Password',
                        style: TextStyle(
                          color: ConstantColors.textColor,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
