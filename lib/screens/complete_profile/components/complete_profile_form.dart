import 'package:flutter/material.dart';
import 'package:tokoto/components/custom_suffix_icon.dart';
import 'package:tokoto/components/default_button.dart';
import 'package:tokoto/components/form_error.dart';
import 'package:tokoto/screens/complete_profile/complete_profile_screen.dart';
import 'package:tokoto/screens/login_success/login_success_screen.dart';
import 'package:tokoto/screens/otp/otp_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CompleteProfileForm extends StatefulWidget {
  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String name;
  String lastName;
  String phoneNumber;
  String address;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: [
            buildFirstNameField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            buildLastNameField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            buildPhoneField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            buildAdressField(),
            FormError(errors: errors),
            SizedBox(height: SizeConfig.screenHeight * 0.04),
            DefaultButton(
                text: "Continue",
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    _formKey.currentState.save();
                    Navigator.pushNamed(context, OTPScreen.routeName);
                  }
                }),
            SizedBox(height: SizeConfig.screenHeight * 0.08),
            Text(
              "By continuing you confirm that you agree\nwith our Terms and Conditions",
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }

  TextFormField buildFirstNameField() {
    return TextFormField(
      onSaved: (newValue) => name = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kNameNullError)) {
          setState(() {
            errors.remove(kNameNullError);
          });
          return "";
        } else if (value.length < 2 && errors.contains(kNameTooShort)) {
          setState(() {
            errors.remove(kNameTooShort);
          });
        }

        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kNameNullError)) {
          setState(() {
            errors.add(kPasswordNullError);
          });
          return "";
        } else if (value.length < 2 && !errors.contains(kNameTooShort)) {
          setState(() {
            errors.add(kNameTooShort);
          });
          return "";
        }

        return null;
      },
      decoration: InputDecoration(
          labelText: "First Name",
          hintText: "Enter your first name",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(
            icon: 'assets/icons/User.svg',
          )),
    );
  }

  TextFormField buildLastNameField() {
    return TextFormField(
      onSaved: (newValue) => lastName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kNameNullError)) {
          setState(() {
            errors.remove(kNameNullError);
          });
          return "";
        } else if (value.length < 2 && errors.contains(kNameTooShort)) {
          setState(() {
            errors.remove(kNameTooShort);
          });
        }

        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kNameNullError)) {
          setState(() {
            errors.add(kPasswordNullError);
          });
          return "";
        } else if (value.length < 2 && !errors.contains(kNameTooShort)) {
          setState(() {
            errors.add(kNameTooShort);
          });
          return "";
        }

        return null;
      },
      decoration: InputDecoration(
          labelText: "Last Name",
          hintText: "Enter your last name",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(
            icon: 'assets/icons/User.svg',
          )),
    );
  }

  TextFormField buildPhoneField() {
    return TextFormField(
      onSaved: (newValue) => phoneNumber = newValue,
      keyboardType: TextInputType.phone,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kNameNullError)) {
          setState(() {
            errors.remove(kNameNullError);
          });
          return "";
        } else if (value.length < 2 && errors.contains(kNameTooShort)) {
          setState(() {
            errors.remove(kNameTooShort);
          });
        }

        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kPhoneNullError)) {
          setState(() {
            errors.add(kPhoneNullError);
          });
          return "";
        } else if (value.length < 11 &&
            !errors.contains(kPhoneNumberBadFormat)) {
          setState(() {
            errors.add(kPhoneNumberBadFormat);
          });
          return "";
        }

        return null;
      },
      decoration: InputDecoration(
          labelText: "Phone Number",
          hintText: "Enter your phone number",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(
            icon: 'assets/icons/Phone.svg',
          )),
    );
  }

  TextFormField buildAdressField() {
    return TextFormField(
      onSaved: (newValue) => address = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kAddressNullError)) {
          setState(() {
            errors.remove(kNameNullError);
          });
          return "";
        }

        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kAddressNullError)) {
          setState(() {
            errors.add(kAddressNullError);
          });
          return "";
        }

        return null;
      },
      decoration: InputDecoration(
          labelText: "Address",
          hintText: "Enter your address",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(
            icon: 'assets/icons/Phone.svg',
          )),
    );
  }
}
