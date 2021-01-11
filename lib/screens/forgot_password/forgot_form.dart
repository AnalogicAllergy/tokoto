import 'package:flutter/material.dart';
import 'package:tokoto/components/custom_suffix_icon.dart';
import 'package:tokoto/components/default_button.dart';
import 'package:tokoto/components/form_error.dart';
import 'package:tokoto/screens/forgot_password/forgot_password_screen.dart';

import '../../constants.dart';
import '../../size_config.dart';

class ForgotForm extends StatefulWidget {
  @override
  _ForgotFormState createState() => _ForgotFormState();
}

class _ForgotFormState extends State<ForgotForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String email;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(30)),
          DefaultButton(
              text: "Continue",
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                }
              })
        ],
      ),
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
