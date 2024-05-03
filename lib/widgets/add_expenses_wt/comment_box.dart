import 'package:flutter/material.dart';

class CommentBox extends StatelessWidget {
  const CommentBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.sticky_note_2_outlined,
          size: 35.0,
        ),
        Expanded(
            child: TextFormField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              hintText: 'Agregar comentario (Opcional)',
              hintStyle: TextStyle(fontSize: 12.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: const BorderSide(color: Colors.green))),
        ))
      ],
    );
  }
}
