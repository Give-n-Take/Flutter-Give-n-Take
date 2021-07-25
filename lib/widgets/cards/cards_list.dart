import 'package:ecommerce_admin_tut/provider/app_provider.dart';
import 'package:ecommerce_admin_tut/provider/tables.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'card_item.dart';

class CardsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppProvider appProvider = Provider.of<AppProvider>(context);
    TablesProvider tablesProvider = Provider.of<TablesProvider>(context);

    return Container(
      height: 120,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CardItem(
              icon: Icons.monetization_on_outlined,
              title: "Revenu",
              subtitle: "Revenus ce mois",
              value: "\$ ${appProvider.revenue}",
              color1: Colors.green.shade700,
              color2: Colors.green,
            ),
            CardItem(
              icon: Icons.shopping_basket_outlined,
              title: "Produits",
              subtitle: "Nombre de produits en vente",
              value: "${tablesProvider.products.length}",
              color1: Colors.lightBlueAccent,
              color2: Colors.blue,
            ),
            CardItem(
              icon: Icons.delivery_dining,
              title: "Commandes",
              subtitle: "Nombre de commandes ce mois",
              value: "${tablesProvider.orders.length}",
              color1: Colors.redAccent,
              color2: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
