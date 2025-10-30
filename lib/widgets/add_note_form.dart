import 'package:flutter/material.dart';
import 'package:notes_app/utils/notification.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/text_form_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, note;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Text(
              'Add a New Note 📝',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),

          // 🟢 Title field
          TextFormFieldWidget(
            hintText: 'Enter title...',
            onSaved: (value) {
              title = value;
            },
          ),

          const SizedBox(height: 20),

          // 🟢 Note field
          SizedBox(
            height: 150,
            child: TextFormFieldWidget(
              onSaved: (value) {
                note = value;
              },
              hintText: 'Enter your note...',
              maxLines: null,
              expands: true,
            ),
          ),
          const SizedBox(height: 25),

          // 🟢 Add button
          CustomButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                setState(() {
                  autovalidateMode = AutovalidateMode.always;
                });
              }
              notification(
                title: "Note Added 📝",
                description: "Your note has been added successfully!",
              );
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
