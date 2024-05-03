import 'package:exp_app/utils/constants.dart';
import 'package:exp_app/widgets/add_expenses_wt/bs_num_keyboard.dart';
import 'package:exp_app/widgets/add_expenses_wt/comment_box.dart';
import 'package:flutter/material.dart';

class AddExpenses extends StatelessWidget {
  const AddExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context)
            .unfocus(); // poner el cursor y al hacer tap se minimiza el teclado
      },
      child: Scaffold(
        appBar: AppBar(title: const Text('Agregar Gasto'), elevation: 0.0),
        body: Column(
          children: [
            const BSNumKeyboard(),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: Constants.sheetBoxDecoration(
                    Theme.of(context).primaryColorDark),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Fecha 12/01/2024'),
                    Text('Seleccionar categoria'),
                    CommentBox(),
                    Expanded(child: Center(child: Text('Boton'))),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
