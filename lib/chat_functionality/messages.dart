import 'package:flutter/material.dart';

class ChatsMainTinder extends StatefulWidget {
  @override
  _ChatsMainTinderState createState() => _ChatsMainTinderState();
}

class _ChatsMainTinderState extends State<ChatsMainTinder> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        new SliverList(
            delegate: SliverChildListDelegate([
          _buildSearchField(),
         // _buildMatches(),
          
          new SizedBox(
            height: 10.0,
          ),
        ])),
      ],
    );
  }

    Widget _buildSearchField() {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: new TextFormField(
        decoration: InputDecoration(
          icon: Icon(
            Icons.search,
            color: Colors.purple,
          ),
          hintText: "Search Matches",
          hintStyle: TextStyle(
              color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 18.0),
          border: new UnderlineInputBorder(
              borderSide:
                  BorderSide(color: Colors.purple.withOpacity(0.5), width: 0.5)),
          enabledBorder: new UnderlineInputBorder(
              borderSide:
                  BorderSide(color: Colors.purple.withOpacity(0.5), width: 0.5)),
          disabledBorder: new UnderlineInputBorder(
              borderSide:
                  BorderSide(color: Colors.purple.withOpacity(0.5), width: 0.5)),
          focusedBorder: new UnderlineInputBorder(
              borderSide:
                  BorderSide(color: Colors.purple.withOpacity(0.5), width: 0.5)),
        ),
      ),
    );
  }

}