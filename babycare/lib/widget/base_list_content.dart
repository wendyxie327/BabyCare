import 'package:flutter/material.dart';

class BaseListContent extends StatelessWidget {

  String _leftImagePath;
  Widget _centerContent;


  BaseListContent(this._leftImagePath, this._centerContent);

  @override
  Widget build(BuildContext context) {
    return Row(
      children:
      [
        new Image.asset(_leftImagePath, width: 48, height: 48, fit: BoxFit.fill, alignment: Alignment.center, ),
        _centerContent
      ],
    );
  }
}
