import 'package:flutter/material.dart';
import 'package:tokoto/model/product.dart';

import '../../constants.dart';
import 'components/body.dart';
import 'components/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = '/details';
  @override
  Widget build(BuildContext context) {
    final DetailsProductArguments arguments =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
        backgroundColor: kBackgroundGrey,
        appBar: CustomAppBar(
          rating: double.parse(arguments.product.rating),
        ),
        body: Body(
          product: arguments.product,
        ));
  }
}

class DetailsProductArguments {
  final Product product;

  DetailsProductArguments({@required this.product});
}
