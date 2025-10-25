import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Note extends StatelessWidget {
  const Note({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now(); // الوقت الحالي

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
      child: Container(
        width: double.infinity,
        height: 260,
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Flutter tips',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'this is tips help in your career in flutter development',
                        style: TextStyle(fontSize: 24),
                      ),
                      const Text(
                        'Moh3ands Romany',
                        style: TextStyle(fontSize: 24),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.delete, size: 40),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                DateFormat('hh:mm a').format(now),
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
