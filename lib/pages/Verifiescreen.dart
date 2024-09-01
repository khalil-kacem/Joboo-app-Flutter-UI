import 'package:flutter/material.dart';

class Verifiescreen extends StatefulWidget {
  const Verifiescreen({Key? key}) : super(key: key);

  @override
  State<Verifiescreen> createState() => _VerifiescreenState();
}

class _VerifiescreenState extends State<Verifiescreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    bool isTablet = screenWidth > 600;

    return Scaffold(
      backgroundColor: Color(0xFFE25319),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: isTablet ? screenWidth * 0.2 : screenWidth * 0.1,
            vertical: screenHeight * 0.05,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: isTablet ? screenHeight * 0.05 : 0,
              ),
              Container(
                width: isTablet ? screenWidth * 0.6 : screenWidth * 0.8,
                height: isTablet ? screenWidth * 0.09 : screenWidth * 0.125,
                child: Image.asset('assets/joboblack.png'),
              ),
              SizedBox(
                height: isTablet ? screenHeight * 0.05 : screenHeight * 0.075,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: isTablet ? screenWidth * 0.1 : screenWidth * 0.1,
                ),
                child: Column(
                  children: [
                    Text(
                      'Votre compte',
                      style: TextStyle(
                        fontSize:
                            isTablet ? screenWidth * 0.05 : screenWidth * 0.07,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'a été vérifié',
                      style: TextStyle(
                        fontSize:
                            isTablet ? screenWidth * 0.05 : screenWidth * 0.07,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              Text(
                'Avec succès',
                style: TextStyle(
                  fontSize: isTablet ? screenWidth * 0.06 : screenWidth * 0.08,
                  color: Color(0xFF111727),
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              Container(
                width: isTablet ? screenWidth * 0.4 : screenWidth * 0.6,
                height: isTablet ? screenWidth * 0.55 : screenWidth * 0.75,
                child: Image.asset('assets/svgg.png', fit: BoxFit.contain),
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 54.6,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                    backgroundColor: Color(0xFF111727),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'SUIVANT',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
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
    );
  }
}
