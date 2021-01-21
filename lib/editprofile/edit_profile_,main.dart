import 'package:flutter/material.dart';
import './gridview_photos.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  bool isSwitched = true;

  Widget smartPhotos() {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Smart Photos",
            style: TextStyle(
                color: Colors.purple[400],
                fontWeight: FontWeight.bold,
                fontSize: 16),
          ),
          Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
              });
            },
            activeTrackColor: Colors.red[100],
            activeColor: Colors.purple[400],
          ),
        ],
      ),
    );
  }

  Widget headingsForTextField({
    text,
    left,
    top,
    right,
    bottom,
  }) {
    return Container(
      margin: EdgeInsets.fromLTRB(left, top, right, bottom),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget textField({hintText, left, right, top, bottom}) {
    return TextField(
      maxLength: 500,
      style: TextStyle(
          //color: Colors.white
          ),
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
          contentPadding: EdgeInsets.fromLTRB(left, top, right, bottom),
          isDense: true,
          enabledBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.white))
          //border: InputBorder.none
          ),
    );
  }

  Widget textField1({hintText, left, right, top, bottom}) {
    return TextField(
      style: TextStyle(
          //color: Colors.white
          ),
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
          contentPadding: EdgeInsets.fromLTRB(left, top, right, bottom),
          isDense: true,
          enabledBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.white))
          //border: InputBorder.none
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.purple[400],
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Edit profile",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.grey[100],
        ),
        child: ListView(
          children: <Widget>[
            //GridViewForPhotos(),
            /* smartPhotos(),
            Container(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Text(
                "Smart Photos Contibuesly test all your profile photos to find the best one",
                style: TextStyle(color: Colors.grey[500], fontSize: 16),
              ),
            ), */
            headingsForTextField(
              text: "About Me",
              left: 16.0,
              top: 16.0,
              right: 16.0,
              bottom: 4.0,
            ),
            textField(
              hintText: "About Me..",
              left: 16.0,
              top: 16.0,
              right: 16.0,
              bottom: 24.0,
            ),
            headingsForTextField(
              text: "My Age",
              left: 16.0,
              top: 0.0,
              right: 16.0,
              bottom: 4.0,
            ),
            textField1(
              hintText: "My Age..",
              left: 16.0,
              top: 16.0,
              right: 16.0,
              bottom: 16.0,
            ),
            headingsForTextField(
              text: "My Languages",
              left: 16.0,
              top: 16.0,
              right: 16.0,
              bottom: 4.0,
            ),
            textField1(
              hintText: "My Languages..",
              left: 16.0,
              top: 16.0,
              right: 16.0,
              bottom: 16.0,
            ),
            headingsForTextField(
              text: "My Hobbies",
              left: 16.0,
              top: 16.0,
              right: 16.0,
              bottom: 4.0,
            ),
            textField1(
              hintText: "My Hobbies..",
              left: 16.0,
              top: 16.0,
              right: 16.0,
              bottom: 16.0,
            ),
            headingsForTextField(
              text: "My Instagram",
              left: 16.0,
              top: 16.0,
              right: 16.0,
              bottom: 4.0,
            ),
            textField1(
              hintText: "My Instagram..",
              left: 16.0,
              top: 16.0,
              right: 16.0,
              bottom: 16.0,
            ),
            /*headingsForTextField(
              text: "Showing my instagram Photos",
              left: 16.0,
              top: 16.0,
              right: 16.0,
              bottom: 4.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(color: Colors.white),
              child: Text(
                "Conect Instagram",
                style: TextStyle(
                    color: Colors.purple[400],
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            headingsForTextField(
              text: "My Anthem",
              left: 16.0,
              top: 16.0,
              right: 16.0,
              bottom: 4.0,
            ),
            textField1(
              hintText: "Choose my Anthem",
              left: 16.0,
              top: 16.0,
              right: 16.0,
              bottom: 16.0,
            ),
            headingsForTextField(
              text: "My Top Spotify Artist",
              left: 16.0,
              top: 16.0,
              right: 16.0,
              bottom: 4.0,
            ),
             Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(color: Colors.white),
              child: Text(
                "Add Spotify to Your Profile",
                style: TextStyle(
                    color: Colors.purple[400],
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ), */
            headingsForTextField(
              text: "My Destination",
              left: 16.0,
              top: 16.0,
              right: 16.0,
              bottom: 4.0,
            ),
            textField1(
              hintText: "My Destination..",
              left: 16.0,
              top: 16.0,
              right: 16.0,
              bottom: 16.0,
            ),
            /* headingsForTextField(
              text: "Sexual Orientation",
              left: 16.0,
              top: 16.0,
              right: 16.0,
              bottom: 4.0,
            ),
            textField1(
              hintText: "Add Sexual Orientation",
              left: 16.0,
              top: 16.0,
              right: 16.0,
              bottom: 16.0,
            ), 
            headingsForTextField(
              text: "Control Your Profile",
              left: 16.0,
              top: 16.0,
              right: 16.0,
              bottom: 4.0,
            ),*/
          ],
        ),
      ),
    );
  }
}
