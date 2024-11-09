import 'package:flutter/material.dart';

void customSnackBar(context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      content: Text( 'text'),
      ),
  );
}