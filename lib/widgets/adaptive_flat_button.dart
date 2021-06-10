import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptiveFlatButton extends StatelessWidget {
  final Function handler;
  final String text;

  AdaptiveFlatButton(this.text, this.handler);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
                        ? CupertinoButton(
                            child: Text(
                              text,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: handler,
                          )
                        : TextButton(
                            style: TextButton.styleFrom(
                              primary: Theme.of(context).primaryColor,
                              textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: handler,
                            child: Text(
                              text,
                            ),
                          );
  }
}
