import 'package:flutter/material.dart';
import 'package:tokoto/components/custom_suffix_icon.dart';
import 'package:tokoto/components/default_button.dart';
import 'package:tokoto/components/form_error.dart';
import 'package:tokoto/screens/forgot_password/forgot_password_screen.dart';
import 'package:tokoto/screens/login_success/login_success_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String email;
  String password;
  bool remember = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(children: [
            Checkbox(
                value: remember,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    remember = value;
                  });
                }),
            Text("Remember me"),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, ForgotPasswordScreen.routeName);
              },
              child: Text(
                "Forgot Password",
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            )
          ]),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(30)),
          DefaultButton(
              text: "Continue",
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                  Navigator.pushNamed(context, LoginSuccessScreen.routeName);
                }
              })
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPasswordNullError)) {
          setState(() {
            errors.remove(kPasswordNullError);
          });
          return "";
        } else if (value.length >= 8 && errors.contains(kShortPasswordError)) {
          setState(() {
            errors.remove(kShortPasswordError);
          });
          return "";
        }

        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kPasswordNullError)) {
          setState(() {
            errors.add(kPasswordNullError);
          });
          return "";
        } else if (value.length < 8 && !errors.contains(kShortPasswordError)) {
          setState(() {
            errors.add(kShortPasswordError);
          });
          return "";
        }

        return null;
      },
      decoration: InputDecoration(
          labelText: "Password",
          hintText: "Enter your password",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(
            icon: 'assets/icons/Lock.svg',
          )),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        } else if (kEmailRegex.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.remove(kInvalidEmailError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
        } else if (!kEmailRegex.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          labelText: "Email",
          hintText: "Enter your email address",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(
            icon: 'assets/icons/Mail.svg',
          )),
    );
  }
}
