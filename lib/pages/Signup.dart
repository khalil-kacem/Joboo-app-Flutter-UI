import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
                  height: MediaQuery.of(context).size.height * 0.065,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.width * 0.125,
                  child: Image.asset('assets/img.png'),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        '''S'inscrire''',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 20.71,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),
                      Container(
                        child: TextFormField(
                          onChanged: (value) {},
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Type something';
                            }
                            return null;
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
                            hintText: "Prénom",
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
                      SizedBox(height: 8),
                      Container(
                        child: TextFormField(
                          onChanged: (value) {},
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Type something';
                            }
                            return null;
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
                            hintText: "Nom",
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
                      SizedBox(height: 8),
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
                      SizedBox(height: 8),
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
                      SizedBox(height: 8),
                      Container(
                        child: TextFormField(
                          onChanged: (value) {},
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Type something';
                            }
                            return null;
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

                            hintText: "Numéro de téléphone",
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
                      SizedBox(height: 8),
                      Container(
                        child: TextFormField(
                          onChanged: (value) {},
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Type something';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.number,
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
                            hintText: "Code",
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
                      SizedBox(height: 20),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 54.6,
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
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
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
                            'OR',
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
                            width: 32,
                            child: Container(
                              child: Image.asset('assets/iphone.png'),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: Text(
                          'Vous avez déjà un compte',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
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
