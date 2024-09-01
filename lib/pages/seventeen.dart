import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Seventeen extends StatefulWidget {
  const Seventeen({Key? key}) : super(key: key);

  @override
  State<Seventeen> createState() => _SeventeenState();
}

class _SeventeenState extends State<Seventeen> {
  bool isChecked = false; // Initial state of the checkbox

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F6),
      appBar: AppBar(
        title: Text(
          "Réservez votre service",
          style: TextStyle(
            color: Color(0xFF111727),
            fontWeight: FontWeight.w800,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFF6F6F6),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Color(0xFF111727)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 15.0), // Add bottom padding
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "CARTE",
                        style: TextStyle(
                          fontSize: 12.13,
                          color: Color(0xFF242736),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        "Paypal",
                        style: TextStyle(
                          fontSize: 20.63,
                          color: Color(0xFF242736),
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  color: Color(0xFFFFFFFF),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Top-left corner picture
                            Row(
                              children: [
                                Image.asset(
                                  'assets/paypal.png',
                                  scale: 2,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ), // Add vertical space between image and texts
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Name on Card",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ), // Add vertical space between texts
                                Text(
                                  "ameerhasan@paypal.me",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ), // Add vertical space between texts
                                Text(
                                  "Added on 15/02/2017",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Positioned(
                          top: 5,
                          right: 2,
                          child: Image.asset(
                            "assets/points.png",
                            scale: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                        color: Colors.white,
                      ),
                      height: 250,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            100), // Adjust border radius as needed
                                        color: Color(
                                            0xFFF6F5F2) // Add orange border
                                        ),
                                    child: IconButton(
                                      icon: Icon(Icons.wallet,
                                          color: Color(0xFF7B8395)),
                                      onPressed: () {
                                        // Add your onPressed action here
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            100), // Adjust border radius as needed
                                        color: Color(
                                            0xFFE25319) // Add orange border
                                        ),
                                    child: IconButton(
                                      icon: Icon(Icons.paypal,
                                          color: Colors.white),
                                      onPressed: () {
                                        // Add your onPressed action here
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            100), // Adjust border radius as needed
                                        color: Color(
                                            0xFFF6F5F2) // Add orange border
                                        ),
                                    child: IconButton(
                                      icon: Icon(Icons.payment_outlined,
                                          color: Color(0xFF7B8395)),
                                      onPressed: () {
                                        // Add your onPressed action here
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isChecked = !isChecked;
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 18.4, // Adjust size as needed
                                          height: 18.4, // Adjust size as needed
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: Color(
                                                  0xFF7B8395), // Border color
                                              width: 2, // Border width
                                            ),
                                            color: isChecked
                                                ? Color(0xFF7B8395)
                                                : Colors
                                                    .transparent, // Fill color
                                          ),
                                          child: isChecked
                                              ? Icon(
                                                  Icons.check,
                                                  size: 16,
                                                  color: Colors.white,
                                                )
                                              : null,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Save PayPaal ID",
                                          style: TextStyle(
                                              color: Color(0xFF7B8395),
                                              fontSize: 11,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width *
                                  0.8, // 80% of screen width
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  elevation: 5, // Elevation
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        30), // BorderRadius
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 13, horizontal: 20),
                                  backgroundColor: Color(
                                      0xFFE25319), // Set the background color to red
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'SUIVANT',
                                      style: TextStyle(
                                        fontSize: 17, // Text size
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        // Text weight
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 50,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
