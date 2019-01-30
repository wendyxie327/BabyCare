import 'package:flutter/material.dart';

class BaseListContent extends StatelessWidget {
  String _leftImagePath;
  Widget _centerContent;

  BaseListContent(this._leftImagePath, this._centerContent);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: new Image.asset(
            _leftImagePath,
            width: 48,
            height: 48,
            fit: BoxFit.contain,
            alignment: Alignment.center,
          ),
          flex: 1,
        ),
        Expanded(
          child: _centerContent,
          flex: 5,
        ),
      ],
    );
  }
}
