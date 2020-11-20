import 'package:flutter/material.dart';
import 'package:product_list/product_box.dart';

class ProductList extends StatelessWidget {
  ProductList({Key key, this.title}): super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Listing")),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[
          ProductBox(
            name: "Affogatto",
            description: "Kopi dengan satu shot espresso dan dituangkan diatas es krim ",
            price: 50000,
            image: "gambar/affogatto.png"
          ),
          ProductBox(
            name: "Americano",
            description: "Campuran kopi espresso yang ditambahkan air panas",
            price: 25000,
            image: "gambar/americano.png"
          ),
          ProductBox(
            name: "Arabika",
            description: "Kopi Arabika khas Aceh, khas Papua, khas Bali",
            price: 70000,
            image: "gambar/arabika.png"
          ),
          ProductBox(
            name: "Coffeebeer",
            description: "beer",
            price: 15000,
            image: "gambar/beer.png"
          ),
          ProductBox(
            name: "Cappucino",
            description: "Campuran Espresso dan Susu",
            price: 30000,
            image: "gambar/cappucino.png"
          ),
          ProductBox(
            name: "Espresso",
            description: "Kopi Hitam dan Aroma Kuat",
            price: 45000,
            image: "gambar/espresso.png"
          ),
          ProductBox(
            name: "Latte",
            description: "Komposisi kopi dan susu pada latte 3:1",
            price: 45000,
            image: "gambar/latte.png"
          ),
          ProductBox(
            name: "Moccachino",
            description: "Campuran espresso,susu dan coklat",
            price: 45000,
            image: "gambar/moccachino.png"
          ),
          ProductBox(
            name: "Redblack Eye",
            description: "Campuran espresso dengan kopi hitam",
            price: 45000,
            image: "gambar/redblackeye.png"
          ),
          ProductBox(
            name: "Robusta",
            description: "Coffea Canephora",
            price: 45000,
            image: "gambar/robusta.png"
        ]
      ),
    );
  }
}