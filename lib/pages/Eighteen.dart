import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:joboo/pages/test.dart';
import 'package:intl/intl.dart';

class Eighteen extends StatefulWidget {
  @override
  _EighteenState createState() => _EighteenState();
}

class _EighteenState extends State<Eighteen> {
  final _formKey = GlobalKey<FormState>();
  final _categorieController = TextEditingController();
  bool _isPasswordVisible = false;
  String selectedCategory = "Catégorie";
  String selectedLocation = "Localisation";
  TimeOfDay _selectedTime = TimeOfDay(hour: 0, minute: 30);
  TimeOfDay _selectedTime2 = TimeOfDay(hour: 0, minute: 30);
  bool isTacheSelected = true;
  bool isHourSelected = false;
  String _appBarTitle = 'Date and Time Picker';
  File? image;
  DateTime _selectedDate = DateTime.now();
  DateTime _selectedDate2 = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime2(BuildContext context, TimeOfDay initialTime) async {
    // Set default hour, minute, and period to the initial selected time
    int hour = initialTime.hourOfPeriod;
    int minute = initialTime.minute;
    String period = initialTime.period == DayPeriod.am ? 'AM' : 'PM';

    final List<String> hours =
        List.generate(12, (index) => (index + 1).toString());
    final List<String> minutes =
        List.generate(60, (index) => index.toString().padLeft(2, '0'));
    String? selectedHour = hour.toString();
    String? selectedMinute = minute.toString().padLeft(2, '0');
    String? selectedPeriod = period;

    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select Time'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(
                    child: DropdownButtonFormField<String>(
                      value: selectedHour,
                      items: hours.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? value) {
                        selectedHour = value;
                      },
                      decoration: InputDecoration(labelText: 'Hour'),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: DropdownButtonFormField<String>(
                      value: selectedMinute,
                      items: minutes.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? value) {
                        selectedMinute = value;
                      },
                      decoration: InputDecoration(labelText: 'Minute'),
                    ),
                  ),
                ],
              ),
              DropdownButtonFormField<String>(
                value: selectedPeriod,
                items: ['AM', 'PM'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? value) {
                  selectedPeriod = value;
                },
                decoration: InputDecoration(labelText: 'AM/PM'),
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                if (selectedHour != null ||
                    selectedMinute != null ||
                    selectedPeriod != null) {
                  setState(() {
                    _selectedTime2 = TimeOfDay(
                      hour: int.parse(selectedHour!) +
                          (selectedPeriod == 'PM' ? 12 : 0),
                      minute: int.parse(selectedMinute!),
                    );
                  });
                }
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  Future<void> _selectTime(BuildContext context, TimeOfDay initialTime) async {
    // Set default hour, minute, and period to the initial selected time
    int hour = initialTime.hourOfPeriod;
    int minute = initialTime.minute;
    String period = initialTime.period == DayPeriod.am ? 'AM' : 'PM';

    final List<String> hours =
        List.generate(12, (index) => (index + 1).toString());
    final List<String> minutes =
        List.generate(60, (index) => index.toString().padLeft(2, '0'));
    String? selectedHour = hour.toString();
    String? selectedMinute = minute.toString().padLeft(2, '0');
    String? selectedPeriod = period;

    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select Time'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(
                    child: DropdownButtonFormField<String>(
                      value: selectedHour,
                      items: hours.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? value) {
                        selectedHour = value;
                      },
                      decoration: InputDecoration(labelText: 'Hour'),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: DropdownButtonFormField<String>(
                      value: selectedMinute,
                      items: minutes.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? value) {
                        selectedMinute = value;
                      },
                      decoration: InputDecoration(labelText: 'Minute'),
                    ),
                  ),
                ],
              ),
              DropdownButtonFormField<String>(
                value: selectedPeriod,
                items: ['AM', 'PM'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? value) {
                  selectedPeriod = value;
                },
                decoration: InputDecoration(labelText: 'AM/PM'),
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                if (selectedHour != null ||
                    selectedMinute != null ||
                    selectedPeriod != null) {
                  setState(() {
                    _selectedTime = TimeOfDay(
                      hour: int.parse(selectedHour!) +
                          (selectedPeriod == 'PM' ? 12 : 0),
                      minute: int.parse(selectedMinute!),
                    );
                  });
                }
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  Future<void> _selectDate2(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate2,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate2) {
      setState(() {
        _selectedDate2 = picked;
      });
    }
  }

  Future<void> selectImageFromGallery() async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF111727),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      backgroundColor: Color(0xFF111727),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Information',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'sur le compte',
                          style: TextStyle(
                            fontSize: 22,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          selectImageFromGallery();
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFF202938),
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: Color(0xFFE25319)),
                          ),
                          child: image != null
                              ? ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.file(
                                    image!,
                                    fit: BoxFit.cover,
                                    width: 100,
                                    height: 100,
                                  ),
                                )
                              : Center(
                                  child: Image.asset(
                                    'assets/picture.png',
                                    width: 35,
                                  ),
                                ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height:
                          54.6, // Set the height to match the DropdownButton's height
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
                      height:
                          54.6, // Set the height to match the DropdownButton's height
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
                      height:
                          54.6, // Set the height to match the DropdownButton's height
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
                      height:
                          54.6, // Set the height to match the DropdownButton's height
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xFF202938),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: DropdownButton<String>(
                              isExpanded:
                                  true, // Set this to true to make the DropdownButton fill the width
                              value: selectedCategory,
                              items: [
                                "Catégorie",
                                "Mobile",
                                "DataScience",
                                "UI/UX",
                                "Anatomy",
                              ].map((String gender) {
                                return DropdownMenuItem<String>(
                                  value: gender,
                                  child: Text(
                                    gender,
                                    style: TextStyle(
                                      color: Color(0xFF7884A5),
                                      fontSize: 14,
                                    ),
                                  ),
                                );
                              }).toList(),
                              onChanged: (String? value) {
                                setState(() {
                                  selectedCategory = value ?? "";
                                });
                              },
                              icon: Icon(
                                Icons.arrow_drop_down,
                                color: Color(0xFF7884A5),
                              ),
                              underline: Container(
                                height: 0,
                              ),
                              dropdownColor: Color(0xFF202938),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      height:
                          54.6, // Set the height to match the DropdownButton's height
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xFF202938),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: DropdownButton<String>(
                              isExpanded:
                                  true, // Set this to true to make the DropdownButton fill the width
                              value: selectedLocation,
                              items: [
                                "Localisation",
                                "Mobile",
                                "DataScience",
                                "UI/UX",
                                "Anatomy",
                              ].map((String gender) {
                                return DropdownMenuItem<String>(
                                  value: gender,
                                  child: Text(
                                    gender,
                                    style: TextStyle(
                                      color: Color(0xFF7884A5),
                                      fontSize: 14,
                                    ),
                                  ),
                                );
                              }).toList(),
                              onChanged: (String? value) {
                                setState(() {
                                  selectedLocation = value ?? "";
                                });
                              },
                              icon: Icon(
                                Icons.arrow_drop_down,
                                color: Color(0xFF7884A5),
                              ),
                              underline: Container(
                                height: 0,
                              ),
                              dropdownColor: Color(0xFF202938),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      height:
                          54.6, // Set the height to match the DropdownButton's height
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
                          hintText: "Bio",
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
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                "DE",
                                style: TextStyle(
                                    color: Color(0xFFE25319),
                                    fontSize: 8,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 5),
                              child: InkWell(
                                onTap: () {
                                  _selectDate(context);
                                },
                                child: Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        DateFormat('EE, MMM d,yyyy')
                                            .format(_selectedDate)
                                            .toUpperCase(),
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.arrow_drop_down,
                                      color: Color(0xFFE25319),
                                      size: 20,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(height: 10),
                            InkWell(
                              onTap: () {
                                _selectTime(context, _selectedTime);
                              },
                              child: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      _selectedTime.format(context),
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.white),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      _selectedTime.period == DayPeriod.am
                                          ? 'AM'
                                          : 'PM',
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.arrow_drop_down,
                                      color: Color(0xFFE25319),
                                      size: 20,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                "À",
                                style: TextStyle(
                                    color: Color(0xFFE25319),
                                    fontSize: 8,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 5),
                              child: InkWell(
                                onTap: () {
                                  _selectDate2(context);
                                },
                                child: Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        DateFormat('EE, MMM d,yyyy')
                                            .format(_selectedDate2)
                                            .toUpperCase(),
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.arrow_drop_down,
                                      color: Color(0xFFE25319),
                                      size: 20,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(height: 10),
                            InkWell(
                              onTap: () {
                                _selectTime2(context, _selectedTime2);
                              },
                              child: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      _selectedTime2.format(context),
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.white),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      _selectedTime2.period == DayPeriod.am
                                          ? 'AM'
                                          : 'PM',
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.arrow_drop_down,
                                      color: Color(0xFFE25319),
                                      size: 20,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "Prix",
                        style: TextStyle(
                            color: Color(0xFFE25319),
                            fontSize: 12,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Checkbox(
                              value: isTacheSelected,
                              activeColor: Color(0xFF111727),
                              checkColor: Color(0xFFE25319),
                              onChanged: (value) {
                                setState(() {
                                  isTacheSelected = true;
                                  if (isTacheSelected) {
                                    isHourSelected = false;
                                  }
                                });
                              },
                            ),
                            Text(
                              'Tâche',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Checkbox(
                              value: isHourSelected,
                              activeColor: Color(0xFF111727),
                              checkColor: Color(0xFFE25319),
                              onChanged: (value) {
                                setState(() {
                                  isHourSelected = true;
                                  if (isHourSelected) {
                                    isTacheSelected = false;
                                  }
                                });
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                side: BorderSide(
                                    color: isHourSelected
                                        ? Colors.white
                                        : Colors.orange),
                              ),
                            ),
                            Text(
                              'Heure',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 45,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 54.6,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 16, horizontal: 20),
                          backgroundColor: Color(0xFFE25319),
                        ),
                        child: Container(
                          child: Text(
                            'PUBLIER',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
