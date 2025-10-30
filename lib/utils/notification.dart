import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';

OverlaySupportEntry notification({
  required String title,
  required String description,
}) {
  return showSimpleNotification(
    Text(title),
    subtitle: Text(description),
    background: Colors.teal,
    autoDismiss: true,
    duration: const Duration(seconds: 2),
    slideDismissDirection: DismissDirection.up,
  );
}
//'Note Added 📝' == title
// 'Your note has been added successfully!' == description