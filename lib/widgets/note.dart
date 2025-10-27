import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/pages/edit_note_view.dart';

class Note extends StatelessWidget {
  final String title;
  final String body;
  final Color color;
  const Note({super.key, required this.color, required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
      child: Container(
        width: double.infinity,
        height: 260,
        decoration: BoxDecoration(
          color: color,
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
                  // 🟢 النصوص
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Text(
                       title,
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        body,
                        style: TextStyle(fontSize: 24),
                      ),
                      Text('Moh3ands Romany', style: TextStyle(fontSize: 24)),
                    ],
                  ),

                  // 🟢 زر 3 نقط (القائمة المنبثقة)
                  PopupMenuButton<String>(
                    icon: Icon(Icons.more_vert, size: 35, color: Colors.white),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    onSelected: (value) {
                      if (value == 'edit') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                 EditNoteView(title: title, body: body),
                          ),
                        );
                      } else if (value == 'delete') {
                        // هنا تحط كود الحذف
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Note deleted 🗑️"),
                            backgroundColor: Colors.red,
                          ),
                        );
                      }
                    },
                    itemBuilder: (context) => [
                      const PopupMenuItem(
                        value: 'edit',
                        child: Row(
                          children: [
                            Icon(Icons.edit, color: Colors.teal),
                            SizedBox(width: 10),
                            Text('Edit'),
                          ],
                        ),
                      ),
                      const PopupMenuItem(
                        value: 'delete',
                        child: Row(
                          children: [
                            Icon(Icons.delete, color: Colors.red),
                            SizedBox(width: 10),
                            Text('Delete'),
                          ],
                        ),
                      ),
                    ],
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
