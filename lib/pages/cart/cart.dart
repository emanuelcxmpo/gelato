import 'package:flutter/material.dart';
import 'package:gelato_app/models/Cart.dart';

import 'components/body.dart';
import 'components/check_out_card.dart';

class Cart extends StatelessWidget {
  static String routeName = "/cart";

  const Cart({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: const Body(),
      bottomNavigationBar: const CheckoutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          const Text(
            "Carrito de compras",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "${demoCarts.length} items",
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}