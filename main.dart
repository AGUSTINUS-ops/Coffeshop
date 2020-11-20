import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(newMyApp);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coffee Shop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        title: 'Coffee Shop',            
                    home: RandomWords(),
        appBar: AppBar(
          title: Text("Welcome to Coffee Shop"),
        ),
        body: GridView.count(
          crossAxisCount: 4,
          children: List.generate(menus.length, (index) {
            return Center(child: MenuCard(menu: menus[index]));
          }),
        ),
      ),
    );
  }
}

class Menu {
  const Menu({this.title, this.icon});

  final String title;
  final String icon;
}

const List<Menu> menus = const [
  const Menu(title: "Coffee Affogatto", icon: "gambar/affogatto.png"),
  const Menu(title: "Americano", icon: "gambar/americano.png"),
  const Menu(title: "Arabika", icon: "gambar/arabika.png"),
  const Menu(title: "Coffeebeer", icon: "gambar/beer.png"),
  const Menu(title: "Cappucino", icon: "gambar/cappucino.png"),
  const Menu(title: "Espresso", icon: "gambar/espresso.png"),
  const Menu(title: "Latte", icon: "gambar/latte.png"),
  const Menu(title: "Moccachino", icon: "gambar/moccachino.png"),
  const Menu(title: "Redblack Eye", icon: "gambar/redblackeye.png"),
  const Menu(title: "Robusta", icon: "gambar/robusta.png"),
];

class MenuCard extends StatelessWidget {
  const MenuCard({Key key, this.menu}) : super(key: key);

  final Menu menu;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 10,
      child: InkWell(
        onTap: () 
        {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProductList(),
          );
        },
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children);
              Padding(
                padding: EdgeInsets.all(5),
              ),
              Expanded(
                  child: Image.asset(
                menu.icon,
                height: 80.0,
                width: 80.0,
                fit: BoxFit.contain,
              ),
              ),
              Text(menu.title, style: TextStyle(fontSize: 12.0)),
              Padding(
                padding: EdgeInsets.all(5),
              ),
            ),
      ),
    );
  }
}
