import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Fifteen extends StatefulWidget {
  const Fifteen({Key? key}) : super(key: key);

  @override
  State<Fifteen> createState() => _FifteenState();
}

class _FifteenState extends State<Fifteen> {
  double _rating = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Rate for Service",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF111727),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      backgroundColor: Color(0xFF111727),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.orange),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/person.png'),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Informations personnelles",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 15),
            Container(
              height: 1,
              color: Color(0xFF23262D),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.phone,
                    color: Color(0xFFE25319),
                    size: 20,
                  ),
                  SizedBox(width: 15),
                  Text(
                    "+91 931 488 2375",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Container(
              height: 1,
              color: Color(0xFF23262D),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.mail,
                    color: Color(0xFFE25319),
                    size: 20,
                  ),
                  SizedBox(width: 15),
                  Text(
                    "Alex@getfix.com",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Container(
              height: 1,
              color: Color(0xFF23262D),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.language,
                    color: Color(0xFFE25319),
                    size: 20,
                  ),
                  SizedBox(width: 15),
                  Text(
                    "Francais",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Container(
              height: 1,
              color: Color(0xFF23262D),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.place,
                    color: Color(0xFFE25319),
                    size: 20,
                  ),
                  SizedBox(width: 15),
                  Text(
                    "CRM8 NL, O3457,Dakar",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Text(
              "Avis",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "SIVAG",
                  style: TextStyle(
                      color: Color(0xFF7884A5),
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(width: 10),
                RatingBar.builder(
                  initialRating: _rating,
                  minRating: 0,
                  direction: Axis.horizontal,
                  allowHalfRating: false,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 0),
                  itemBuilder: (context, index) {
                    return Transform.scale(
                      scale: 0.7,
                      child: Icon(
                        Icons.star,
                        color: index < _rating ? Colors.orange : Colors.grey,
                      ),
                    );
                  },
                  onRatingUpdate: (rating) {
                    setState(() {
                      _rating = rating;
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Le service est bon",
              style: TextStyle(
                  color: Color(0xFF7884A5),
                  fontSize: 12,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
