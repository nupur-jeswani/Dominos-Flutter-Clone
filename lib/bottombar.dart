import 'package:dominos_clone_app/offers.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'cart.dart';

class Bottombar extends StatelessWidget {
  const Bottombar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 31),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 70,
              width: 330,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  color: Colors.lightGreen[600]),
              child: Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        IconButton(
                            padding: EdgeInsets.zero,
                            icon: Icon(
                              Icons.home,
                              color: Colors.white,
                              size: 30,
                            ),
                            onPressed: () {}),
                        Text("Menu", style: TextStyle(color: Colors.white))
                      ],
                    ),
                    Container(
                      color: Colors.black26,
                      height: 30,
                      width: 2,
                    ),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: IconButton(
                              padding: EdgeInsets.zero,
                              icon: Icon(
                                MdiIcons.cashPlus,
                                color: Colors.white,
                                size: 30,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Offers()),
                                );
                              }),
                        ),
                        Text(
                          "Offers",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Container(
                      color: Colors.black26,
                      height: 30,
                      width: 2,
                    ),
                    Column(
                      children: [
                        IconButton(
                            padding: EdgeInsets.all(0),
                            icon: Icon(
                              Icons.shopping_cart,
                              color: Colors.white,
                              size: 30,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CartPage()),
                              );
                            }),
                        Text("Cart", style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ],
                ),
              ),
            ),
            //
          ),
        ),
      ],
    );
  }
}
