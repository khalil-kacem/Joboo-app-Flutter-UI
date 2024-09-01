import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xF111727),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.width * 0.3,
                  child: Image.asset('assets/img.png'),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Bienvenue',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 30,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Connectez-vous',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 30),
                      Container(
                        child: TextFormField(
                          onChanged: (value) {},
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Type something';
                            } else if (RegExp(
                                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(value)) {
                              return null;
                            } else {
                              return 'enter valid email';
                            }
                          },
                          style: TextStyle(
                            fontSize: 20,
                          ),
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                color: Color(0xFF202938),
                              ),
                            ),
                            hintText: "Email",
                            hintStyle: TextStyle(
                              color: Color(0xFF7884A5),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                color: Colors.red,
                              ),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 12), // Padding
                            fillColor: Color(0xFF202938),
                            filled: true,
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        child: TextFormField(
                          controller: _passwordController,
                          onChanged: (value) {},
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Type something';
                            }
                            return null;
                          },
                          obscureText: !_isPasswordVisible,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: Icon(
                                _isPasswordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Color(0xFF7884A5),
                              ),
                              onPressed: () {
                                setState(() {
                                  _isPasswordVisible = !_isPasswordVisible;
                                });
                              },
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                color: Color(0xFF202938),
                              ),
                            ),
                            hintText: "Mot de passe",
                            hintStyle: TextStyle(
                              color: Color(0xFF7884A5),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                color: Colors.red,
                              ),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 12), // Padding
                            fillColor: Color(
                                0xFF202938), // Set background color to grey
                            filled: true,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(top: 7),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              child: Text(
                                'Mot de passe oublié? ',
                                style: TextStyle(
                                    color: Color(0xFFE25319),
                                    fontWeight: FontWeight.w200,
                                    fontSize: 13),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      SizedBox(
                        width: MediaQuery.of(context).size.width *
                            0.8, // 80% of screen width
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState != null &&
                                _formKey.currentState!.validate()) {
                              print("ok");
                            } else {
                              print('not ok');
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 5, // Elevation
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(30), // BorderRadius
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 16, horizontal: 20),
                            backgroundColor: Color(0xFFE25319),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'CONNEXION',
                                style: TextStyle(
                                  fontSize: 18, // Text size
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
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 1,
                              color: Color(0xFFE25319),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'OU',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              decorationColor: Color(0xFF8B1111),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Container(
                              height: 1,
                              color: Color(0xFFE25319),
                            ),
                          ),
                          SizedBox(width: 10),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 32,
                            width: 32,
                            child: Container(
                              child: Image.asset('assets/google.png'),
                            ),
                          ),
                          SizedBox(width: 20),
                          SizedBox(
                            height: 32,
                            width: 32,
                            child: Container(
                              child: Image.asset('assets/fb.png'),
                            ),
                          ),
                          SizedBox(width: 20),
                          SizedBox(
                            height: 32,
                            width: 32, // Set the width of the container
                            child: Container(
                              child: Image.asset('assets/iphone.png'),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '''Vous n'avez pas de compte ? ''',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Créer un compte',
                            style: TextStyle(
                              color: Color(0xFFE25319),
                              fontWeight: FontWeight.w200,
                              fontSize: 12,
                              decorationColor: Color(0xFF8B1111),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
