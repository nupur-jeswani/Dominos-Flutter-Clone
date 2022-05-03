import 'package:dominos_clone_app/bestseller.dart';
import 'package:dominos_clone_app/offers.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:dominos_clone_app/signIn.dart';
import 'bottombar.dart';
import 'cart.dart';

class Homepage extends StatefulWidget {
  // Homepage(userName, mno, location);


  var uname;
  var mobileNumber;
  var address;

  Homepage({this.uname, this.mobileNumber, this.address, userName});

  @override
  _HomepageState createState() => _HomepageState(uname, mobileNumber, address);
}

class _HomepageState extends State<Homepage> {

  var uname;
  var mobileNumber;
  var address;

  _HomepageState(this.uname, this.mobileNumber, this.address);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f6ff),
      floatingActionButton: Bottombar(),
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Column(
          children: [
            Row(
              children: [
                Text(
                  "Deliver to",
                  style: TextStyle(fontSize: 18),
                ),
                Icon(Icons.arrow_drop_down),
              ],
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  address,
                  style: TextStyle(fontSize: 15),
                ),
              ),
          ],
        ),
        // leading: GestureDetector(
        //   onTap: () {},
        //   child: Icon(Icons.menu),
        // ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: GestureDetector(
              onTap: () {},
              child: Icon(Icons.search),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image.asset(
                          "assets/logo.png",
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Text(
                        "Domino's",
                        style: TextStyle(fontSize: 24),
                      ),
                    ],
                  ),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Column(
                        children: [
                          Text(
                            uname??'default',
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(mobileNumber??'mobile number'),
                        ],
                      ))
                ],
              ),
              decoration: BoxDecoration(
                color: Color(0xfff0f6ff),
              ),
            ),
            ListTile(
              leading: Icon(MdiIcons.pizza),
              title: Text('Menu'),
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const Menu()),
                // );
              },
            ),
            ListTile(
              leading: Icon(MdiIcons.cashPlus),
              title: Text("Deals & offers"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Offers()),
                );
              },
            ),
            ListTile(
              leading: Icon(MdiIcons.creditCardPlusOutline),
              title: Text("Everyday Value offers"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(MdiIcons.cart),
              title: Text("Cart"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>  CartPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(MdiIcons.cardsHeart),
              title: Text("My Favourites"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(MdiIcons.fileDocumentEditOutline),
              title: Text("Feedback"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(MdiIcons.notebookCheck),
              title: Text("Terms & Conditions"),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      //width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0),
                          color: Colors.white),
                      child: Row(
                        children: [
                          Radio(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            value: 0,
                            groupValue: null,
                            onChanged: null,
                          ),
                          Text(
                            "Delivery",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          Radio(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            value: 0,
                            groupValue: null,
                            onChanged: null,
                          ),
                          Text("Take Away",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold)),
                          Radio(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            value: 0,
                            groupValue: null,
                            onChanged: null,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Text("Dine in",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      //width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0),
                          color: Colors.white),
                      child: Row(
                        children: [
                          Icon(
                            Icons.train_outlined,
                            size: 30,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Deliver"),
                                Text("on Train")
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //Scrollable menu
              SizedBox(
                height: 10,
              ),
              //1st banner
              Container(
                height: 150,
                width: MediaQuery.of(context).size.height - 185.0,
                //color: Colors.red,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    bannerlist("assets/offer1.jpeg"),
                    bannerlist("assets/offer2.jpeg"),
                    bannerlist("assets/offer3.jpeg"),
                    bannerlist("assets/offer4.jpeg"),
                    bannerlist("assets/banner.jpeg"),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 22.0),
                      child: Text(
                        "Explore Menu",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    alignment: Alignment.topLeft,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              //2nd banner
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Column(
                  children: [
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 200,
                            width: 190,
                            //alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0),
                                color: Colors.white),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Image.asset(
                                  "assets/2.png",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Veg PIzza",
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 200,
                            width: 190,
                            //alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0),
                                color: Colors.white),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Image.asset(
                                  "assets/2.png",
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Non Veg PIzza",
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              //2nd menu
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10.0, bottom: 30.0),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0),
                                color: Colors.white),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/garlic.png",
                                  height: 130,
                                  width: 120,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: Text(
                                    "Sides & others",
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0),
                                color: Colors.white),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/daaru.png",
                                  height: 130,
                                  width: 130,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: Text(
                                    "Beverages",
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0),
                                color: Colors.white),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/choco.png",
                                  height: 130,
                                  width: 120,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: Text(
                                    "Desserts",
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              //banner

              Container(
                height: 200,
                width: MediaQuery.of(context).size.height - 185.0,
                child: GestureDetector(
                  onTap: () {
                    print("clicked");
                  },
                  child: Image.asset("assets/banner.jpeg"),
                ),
              ),
              SizedBox(height: 30),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Offers",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Offers()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                            "VIEW  ALL",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                        ),
                          ),
                        ),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.only(right: 10.0),
                      //   child: Text(
                      //     "VIEW  ALL",
                      //     style: TextStyle(
                      //         fontSize: 18,
                      //         fontWeight: FontWeight.bold,
                      //         color: Colors.blue),
                      //   ),
                      // )
                    ],
                  )
                ],
              ),
              //offers menu

              SizedBox(
                height: 10,
              ),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.height - 185.0,
                //color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 12.0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      bannerlist("assets/offer1.jpeg"),
                      bannerlist("assets/offer2.jpeg"),
                      bannerlist("assets/offer3.jpeg"),
                      bannerlist("assets/offer4.jpeg"),
                      bannerlist("assets/banner.jpeg"),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Bestsellers",
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                      )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              //Best Seller menu
              Container(
                height: 250,
                width: MediaQuery.of(context).size.height - 185.0,
                //color: Colors.red,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    bestseller("Peppy Paneer", "assets/pizza.jpeg", "Rs 279",
                        "Medium"),
                    bestseller("Veggie Paradise", "assets/bestseller3.jpeg",
                        "Rs 395", "Medium"),
                    bestseller("Cheesey", "assets/bestseller2.jpeg", "Rs 275",
                        "Medium"),
                    bestseller(
                        "Corn cheese", "assets/pizza.jpeg", "Rs 380", "Medium"),
                    bestseller("Cheesey", "assets/bestseller2.jpeg", "Rs 275",
                        "Medium"),
                    bestseller("Peppy Paneer", "assets/pizza.jpeg", "Rs 279",
                        "Medium"),
                    bestseller("Veggie Paradise", "assets/bestseller3.jpeg",
                        "Rs 395", "Medium"),
                    bestseller("Cheesey", "assets/bestseller2.jpeg", "Rs 275",
                        "Medium"),
                    bestseller(
                        "Corn cheese", "assets/pizza.jpeg", "Rs 380", "Medium"),
                    bestseller("Cheesey", "assets/bestseller2.jpeg", "Rs 275",
                        "Medium"),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget bannerlist(String imgpath) {
  return Padding(
    padding: const EdgeInsets.only(left: 8.0, right: 2.0),
    child: Container(
      //height: 200,
      //width: 500,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0), color: Colors.white),
      child: Image.asset(
        imgpath,
        fit: BoxFit.fill,
      ),
    ),
  );
}
