import 'package:dominos_clone_app/carousel.dart';
import "package:flutter/material.dart";

class Offers extends StatefulWidget {
  const Offers({Key? key}) : super(key: key);

  @override
  _OffersState createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Row(
          children: [
            Text("Offers"),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Carousel(),
            SizedBox(
              height: 60,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Offers Available on Payment Methods - ", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ),
                Card(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 350,
                          height: 120,
                          child: Column(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  "Amazon Pay - Flat ₹30 Cash back on MOV ₹300, once per user On order",
                                  style: TextStyle(fontSize: 16)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  "Flat ₹30 Cash back on MOV ₹300, once per user On order",
                                  style: TextStyle(fontSize: 16)),
                            ),
                          ]),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Card(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 350,
                          height: 170,
                          child: Column(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  "Freecharge - Flat Rs. 40 cashback on minimum transaction value of Rs. 399; once per user orde₹via Freecharge wallet",
                                  style: TextStyle(fontSize: 16)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  "Flat Rs. 40 cashback on minimum transaction value of Rs. 399; once per user orde₹via Freecharge wallet",
                                  style: TextStyle(fontSize: 16)),
                            ),
                          ]),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Card(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 350,
                          height: 150,
                          child: Column(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  "Payzapp - Get 10% CashBack* up to ₹50 on PayZapp Registered mobile number on Dominos",
                                  style: TextStyle(fontSize: 16)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  "Get 10% CashBack* up to ₹50 on PayZapp Registered mobile number on Dominos",
                                  style: TextStyle(fontSize: 16)),
                            ),
                          ]),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Card(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 350,
                          height: 120,
                          child: Column(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  "Airtel - Get 15% cashback upto ₹150 on min transaction of Rs. 600, for first time users",
                                  style: TextStyle(fontSize: 16)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  "AU Bank - Get 20% CashBack* upto ₹200 on minimum transaction of ₹500",
                                  style: TextStyle(fontSize: 16)),
                            ),
                          ]),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Card(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 350,
                          height: 120,
                          child: Column(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  "AU Bank - Get 20% CashBack* upto ₹200 on minimum transaction of ₹500",
                                  style: TextStyle(fontSize: 16)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  "Get 20% CashBack* upto ₹200 on minimum transaction of ₹500",
                                  style: TextStyle(fontSize: 16)),
                            ),
                          ]),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Card(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 350,
                          height: 120,
                          child: Column(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  "Mobikwik - Get up to ₹400 Cashback on your transaction with MobiKwik @ Dominos!",
                                  style: TextStyle(fontSize: 16)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  "Get up to ₹400 Cashback on your transaction with MobiKwik @ Dominos!",
                                  style: TextStyle(fontSize: 16)),
                            ),
                          ]),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Card(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 350,
                          height: 170,
                          child: Column(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  "Paytm Wallet - Get up to 500 Cashback on 3 times per user in a month on MOV 399, assured CB of ₹25",
                                  style: TextStyle(fontSize: 16)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  "Get up to 500 Cashback on 3 times per user in a month on MOV 399, assured CB of ₹25 via Paytm Wallet",
                                  style: TextStyle(fontSize: 16)),
                            ),
                          ]),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Card(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 350,
                          height: 120,
                          child: Column(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  "ICICI Bank - 20% off up to INR 125 on MOV of 500, Valid once per month",
                                  style: TextStyle(fontSize: 16)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  "20% off up to INR 125 on MOV of 500, Valid once per month",
                                  style: TextStyle(fontSize: 16)),
                            ),
                          ]),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
