import 'dart:io';
import 'package:flutter/material.dart';
import 'package:tikiti/Event-tickets.dart';
import 'package:tikiti/admin-index.dart';
import 'package:tikiti/event-desc.dart';
import 'package:tikiti/login.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const FigmaToCodeApp());
}

// Generated by: https://www.figma.com/community/plugin/842128343887142055/
class FigmaToCodeApp extends StatelessWidget {
  const FigmaToCodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          AddEvent(),
        ]),
      ),
    );
  }
}


class AddEvent extends StatefulWidget {
  @override
  _AddEventState createState() => _AddEventState();
}


class _AddEventState extends State<AddEvent>{
  String? _imagePath;

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _imagePath = pickedImage.path;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Event'),
        backgroundColor: Color(0xFF706E6E),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              width: 360,
              height: 800,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(color: Colors.white),
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 236,
                      height: 800,
                      decoration: BoxDecoration(color: Color(0xFF626262)),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 236,
                      height: 154,
                      decoration: BoxDecoration(color: Color(0xFFF4F4F4)),
                    ),
                  ),
                    Positioned(
                    left: 74,
                    top: 185,
                    child: GestureDetector(
                      onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                      },
                      child: SizedBox(
                      width: 49,
                      child: Text(
                        'Events',
                        style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 1,
                        ),
                      ),
                      ),
                    ),
                    ),
                    Positioned(
                    left: 74,
                    top: 231,
                    child: GestureDetector(
                      onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddEvent()),
                      );
                      },
                      child: SizedBox(
                      width: 98,
                      child: Text(
                        'Create Event',
                        style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 1,
                        ),
                      ),
                      ),
                    ),
                    ),
                    Positioned(
                      left: 74,
                      top: 277,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Ticket()),
                          );
                        },
                        child: SizedBox(
                          width: 98,
                          child: Text(
                            'Attendees',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                  Positioned(
                    left: 74,
                    top: 323,
                    child: SizedBox(
                      width: 98,
                      child: Text(
                        'Profile',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 1,
                        ),
                      ),
                    ),
                  ),
                    Positioned(
                    left: 74,
                    top: 415,
                    child: GestureDetector(
                      onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                      },
                      child: SizedBox(
                      width: 98,
                      child: Text(
                        'LogOut',
                        style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 1,
                        ),
                      ),
                      ),
                    ),
                    ),
                  Positioned(
                    left: 23,
                    top: 178,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/Events.png"),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 23,
                    top: 224,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/Events.png"),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 23,
                    top: 270,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/People.png"),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 23,
                    top: 316,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/Profile.png"),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 23,
                    top: 408,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/Logout.png"),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 84,
                    top: 23,
                    child: Container(
                      width: 88,
                      height: 87,
                      decoration: ShapeDecoration(
                        color: Color(0xFFD9D9D9),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 91,
                    top: 30,
                    child: Container(
                      width: 74,
                      height: 74,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/User.png"),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 91,
                    top: 115,
                    child: Text(
                      'Parody',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        
        children: [
        Container(
          width: 600,
          height: 831,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Color(0xFFFBFBFB)),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 500,
                  height: 150,
                  decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                child: GestureDetector(
                  onTap: () async {
                    final ImagePicker picker = ImagePicker();
                    // Pick an image.
                    final pickedImage = await picker.pickImage(source: ImageSource.gallery);
                    if (pickedImage != null) {
                      setState(() {
                        // Update the image path or display the image.
                        String? _imagePath;
                       _imagePath = pickedImage.path;
                      });
                    }
                  },
                  child: Container(
                    width: 500,
                    height: 150,
                    color: const Color.fromARGB(255, 227, 227, 227),
                    child: _imagePath != null
                        ? Image.file(
                            File(_imagePath!),
                            fit: BoxFit.cover,
                          )
                        : Center(
                            child: Text(
                              'Tap to select an image',
                              style: TextStyle(color: Color.fromRGBO(4, 4, 4, 1)),
                            ),
                          ),
                  ),
                ),
              ),
              Positioned(
                left: 14,
                top: 200,
                child: Text(
                  'Event Title',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 14,
                top: 265,
                child: Text(
                  'Event Description',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 25,
                top: 446,
                child: Text(
                  'Location',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 25,
                top: 541,
                child: Text(
                  'Event Type',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 25,
                top: 640,
                child: Text(
                  'Tickets',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 31,
                top: 341,
                child: Text(
                  'Start',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 185,
                top: 341,
                child: Text(
                  'Ends',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
                Positioned(
                left: 107,
                top: 190,
                child: Container(
                  width: 250,
                  height: 37,
                  child: TextField(
                  style: TextStyle(
                  color: Colors.black,
                  ),
                  decoration: InputDecoration(
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(width: 1),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  ),
                  ),
                ),
                ),
                Positioned(
                left: 32,
                top: 293,
                child: Container(
                  width: 284,
                  height: 37,
                  child: TextField(
                  style: TextStyle(
                  color: Colors.black,
                  ),
                  decoration: InputDecoration(
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(width: 1),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  ),
                  ),
                ),
                ),
                Positioned(
                  left: 25,
                  top: 581,
                  child: Container(
                  width: 284,
                  height: 37,
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 1),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    ),
                    items: [
                    DropdownMenuItem(
                      value: 'Option 1',
                      child: Text('Option 1'),
                    ),
                    DropdownMenuItem(
                      value: 'Option 2',
                      child: Text('Option 2'),
                    ),
                    DropdownMenuItem(
                      value: 'Option 3',
                      child: Text('Option 3'),
                    ),
                    ],
                    onChanged: (value) {
                    // Handle dropdown value change
                    },
                  ),
                  ),
                ),
              Positioned(
                left: 35,
                top: 379,
                child: Container(
                  width: 125,
                  height: 37,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 25,
                top: 476,
                child: Container(
                  width: 125,
                  height: 37,
                  decoration: ShapeDecoration(
                    color: Color(0xC9FF3D00),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 176,
                top: 476,
                child: Container(
                  width: 125,
                  height: 37,
                  decoration: ShapeDecoration(
                    color: Color(0xC9FD4C00),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
                Positioned(
                left: 14,
                top: 670,
                child: Container(
                  width: 93,
                  height: 37,
                  child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 1),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  ),
                ),
                ),
              Positioned(
                left: 136,
                top: 670,
                child: Container(
                  width: 93,
                  height: 37,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 254,
                top: 670,
                child: Container(
                  width: 93,
                  height: 37,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 191,
                top: 379,
                child: Container(
                  width: 125,
                  height: 37,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 31,
                top: 681,
                child: Text(
                  'Early Bird',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Kavoon',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 68,
                top: 492,
                child: Text(
                  'Online',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'Kavoon',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 213,
                top: 492,
                child: Text(
                  'Physical',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'Kavoon',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 156,
                top: 679,
                child: Text(
                  'Regular',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Kavoon',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 289,
                top: 679,
                child: Text(
                  'VIP',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Kavoon',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 35,
                top: 741,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EventDets()),
                    );
                  },
                  child: Container(
                    width: 274,
                    height: 33,
                    decoration: ShapeDecoration(
                      color: Color(0xFFFD4C00),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 35,
                top: 745,
                child: SizedBox(
                  width: 273,
                  height: 33,
                  child: Text(
                    'Next',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 268,
                top: 585,
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/Expand Arrow.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 120,
                top: 383,
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/Time.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 278,
                top: 383,
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/Time.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
      ),
    );
  
  }
}