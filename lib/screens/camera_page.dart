import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraPage extends StatefulWidget {
  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  File image;

  Future<void> openCamera() async {
    var _pickedimage = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      image = _pickedimage;
      Navigator.of(context).pop();
    });
  }

  Future<void> openGallery() async {
    var _picture = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      image = _picture;
      Navigator.of(context).pop();
    });
  }

  Future<void> optionsDialogueBox() {
    return showDialog(
      context: context,
      builder: (
        BuildContext context,
      ) {
        return AlertDialog(
          backgroundColor: Theme.of(context).primaryColor,
          shape: RoundedRectangleBorder(),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                GestureDetector(
                  onTap: openCamera,
                  child: Text(
                    'Take a Picture',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                GestureDetector(
                  onTap: openGallery,
                  child: Text(
                    'Choose Picture',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget customRaisedButton = RaisedButton(
      onPressed: () {
        optionsDialogueBox();
      },
      padding: EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 15.0,
      ),
      color: Theme.of(context).primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Text(
        'Pick an Image please',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
    return image == null
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(40.0),
                height: 250,
                width: 250,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Image(
                    image: AssetImage('assets/logo.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              customRaisedButton,
            ],
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(20.0),
                height: 250,
                width: 250,
                child: Image.file(
                  image,
                  fit: BoxFit.contain,
                ),
              ),
              customRaisedButton,
            ],
          );
  }
}
