import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class OtpForm extends StatefulWidget {
  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  FocusNode pin2FocusNode;
  FocusNode pin3FocusNode;
  FocusNode pin4FocusNode;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pin2FocusNode = new FocusNode();
    pin3FocusNode = new FocusNode();
    pin4FocusNode = new FocusNode();
  }

  @override
  void dispose() {
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  void nextField({String value, FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: getProportionateScreenWidth(60),
            child: TextFormField(
                autofocus: true,
                obscureText: true,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24),
                onChanged: (value) {
                  nextField(value: value, focusNode: pin2FocusNode);
                },
                decoration: otpInputDecoration),
          ),
          SizedBox(
            width: getProportionateScreenWidth(60),
            child: TextFormField(
                focusNode: pin2FocusNode,
                obscureText: true,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24),
                onChanged: (value) {
                  nextField(value: value, focusNode: pin3FocusNode);
                },
                decoration: otpInputDecoration),
          ),
          SizedBox(
            width: getProportionateScreenWidth(60),
            child: TextFormField(
                focusNode: pin3FocusNode,
                obscureText: true,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24),
                onChanged: (value) {
                  nextField(value: value, focusNode: pin4FocusNode);
                },
                decoration: otpInputDecoration),
          ),
          SizedBox(
            width: getProportionateScreenWidth(60),
            child: TextFormField(
                focusNode: pin4FocusNode,
                obscureText: true,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24),
                onChanged: (value) {
                  pin4FocusNode.unfocus();
                },
                decoration: otpInputDecoration),
          )
        ],
      ),
    );
  }
}
