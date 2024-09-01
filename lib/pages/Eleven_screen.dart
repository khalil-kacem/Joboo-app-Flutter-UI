import 'package:flutter/material.dart';
import 'package:joboo/pages/test.dart';

class Eleven_screen extends StatefulWidget {
  const Eleven_screen({Key? key}) : super(key: key);

  @override
  State<Eleven_screen> createState() => _Eleven_screenState();
}

class _Eleven_screenState extends State<Eleven_screen> {
  late Color card1Color;
  late Color card2Color;
  bool isCard1Selected = true;
  bool isCard2Selected = false;

  @override
  void initState() {
    super.initState();
    card1Color = Color(0xFFE25319);
    card2Color = Color(0xFF202938);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF111727),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Colors.black12,
              Color(0xFF111727),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding:
                      EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 30,
                        height: 30,
                        child: Image.asset('assets/menu.png'),
                      ),
                      Expanded(
                        child: Center(
                          child: SizedBox(
                            width: 115,
                            height: 39.16,
                            child: Image.asset('assets/img.png'),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Color(0xFF202938)),
                          child: IconButton(
                            icon:
                                Icon(Icons.notifications, color: Colors.white),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyHomePage()));
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Main content goes here
              Positioned.fill(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 70), // Adjust the height as needed
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Bonjour ! Choisissez votre ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 23,
                                fontWeight: FontWeight.w800),
                          ),
                          Text(
                            "zone de service.",
                            style: TextStyle(
                                color: Color(0xFFE25319),
                                fontSize: 23,
                                fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),

                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                card1Color = Color(0xFFE25319);
                                card2Color = Color(0xFF202938);
                                isCard1Selected = true;
                                isCard2Selected = false;
                              });
                            },
                            child: Container(
                              width: 163.7, // Set the width here
                              height: 132.4,
                              child: Card(
                                color: card1Color,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 0,
                                      right: 0,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset(
                                          'assets/batiment.png',
                                          width: 25,
                                          height: 25,
                                          color: isCard1Selected
                                              ? Color(0xFF202938)
                                              : Color(0xFFE25319),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      bottom: 0,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Text(
                                              '''Organisation''',
                                              style: TextStyle(
                                                color: isCard1Selected
                                                    ? Color(0xFF2F2F2F)
                                                    : Color(0xFFE25319),
                                                fontSize: 14.66,
                                              ),
                                            ),
                                            Text(
                                              '''d'entreprise''',
                                              style: TextStyle(
                                                  color: isCard1Selected
                                                      ? Color(0xFF2F2F2F)
                                                      : Color(0xFFE25319),
                                                  fontSize: 14.66,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                card1Color = Color(0xFF202938);
                                card2Color = Color(0xFFE25319);
                                isCard1Selected = false;
                                isCard2Selected = true;
                              });
                            },
                            child: Container(
                              width: 163.7, // Set the width here
                              height: 132.4,
                              child: Card(
                                color: card2Color,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 0,
                                      right: 0,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset(
                                          'assets/house.png',
                                          width: 25,
                                          height: 25,
                                          color: isCard2Selected
                                              ? Color(0xFF202938)
                                              : Color(0xFFE25319),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      bottom: 0,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Text(
                                              '''Personnel''',
                                              style: TextStyle(
                                                color: isCard2Selected
                                                    ? Color(0xFF2F2F2F)
                                                    : Color(0xFFE25319),
                                                fontSize: 14.66,
                                              ),
                                            ),
                                            Text(
                                              '''à domicile''',
                                              style: TextStyle(
                                                  color: isCard2Selected
                                                      ? Color(0xFF2F2F2F)
                                                      : Color(0xFFE25319),
                                                  fontSize: 14.66,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20), // Adding space below the cards
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: Color(0xFF202938),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText:
                                'Entrez votre emplacement pour le service',
                            hintStyle: TextStyle(
                                color: Color(0xFF7884A5), fontSize: 12),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(vertical: 15),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Emplacement actuel :",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w300),
                      ),
                      Text(
                        "Service Location near - Dakar 302019",
                        style: TextStyle(
                            color: Color(0xFF7884A5),
                            fontSize: 13,
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width *
                              1, // 80% of screen width
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              elevation: 5, // Elevation
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(30), // BorderRadius
                              ),
                              padding: EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 20),
                              backgroundColor: Color(
                                  0xFFE25319), // Set the background color to red
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'RECHERCHER',
                                  style: TextStyle(
                                    fontSize: 17, // Text size
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white,
                                    // Text weight
                                  ),
                                ),
                                SizedBox(width: 10),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Center(
                        child: InkWell(
                          onTap: () {},
                          child: Text(
                            "PLUS TARD",
                            style: TextStyle(
                                color: Color(0xFFE25319),
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
