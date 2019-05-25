import 'package:flutter/material.dart';

class RadioItem extends StatelessWidget {
  final RadioModel _item;
  RadioItem(this._item);
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.all(10.0),
      child: new Container(
        height: 28.8,
        width: 80.8,
        child: new Center(
          child: new Text(_item.buttonText,
              style: new TextStyle(
                  color:
                  const Color(0xff151515),
                  fontWeight: FontWeight.w400,
                  fontFamily: "AlegreyaSansSC",
                  fontStyle:  FontStyle.normal,
                  fontSize: 12.7)),
        ),
        decoration: new BoxDecoration(
          gradient: _item.isSelected
              ? LinearGradient(
                colors: [
                  Color.fromRGBO(255, 227, 69, 1),
                  Color.fromRGBO(255, 194, 33, 1)
                ],
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
              )
              : LinearGradient(
                colors: [
                  Color.fromRGBO(255, 255, 255, 1),
                  Color.fromRGBO(255, 255, 255, 1)
                ],
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
              ),

          borderRadius: const BorderRadius.all(const Radius.circular(30.0)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 7.5,
                //spreadRadius: 1.0,
              )
            ]),
        ),
      );
  }
}

class RadioModel {
  bool isSelected;
  final String buttonText;
  final String text;

  RadioModel(this.isSelected, this.buttonText, this.text);
}