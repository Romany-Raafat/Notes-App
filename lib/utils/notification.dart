  import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';
  OverlaySupportEntry notification() {
    return showSimpleNotification(
      const Text('Note Added 📝'),
      subtitle: const Text('Your note has been added successfully!'),
      background: Colors.teal,
      autoDismiss: true,
      duration: const Duration(seconds: 2),
      slideDismissDirection: DismissDirection.up,
    );
  }
