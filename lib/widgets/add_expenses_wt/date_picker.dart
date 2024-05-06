import 'package:exp_app/models/combined_model.dart';
import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  final CombinedModel cModel;
  const DatePicker({super.key, required this.cModel});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  String selectedDay = 'Hoy';
  @override
  Widget build(BuildContext context) {
    DateTime _date = DateTime.now();
    var _widgets = <Widget>[];

    _widgets.insert(0, const Icon(Icons.date_range_outlined, size: 35.0));
    _widgets.insert(1, const SizedBox(width: 4));

    Map<String, DateTime> items = {
      'Hoy': _date,
      'Arer': _date.subtract(const Duration(hours: 24)),
      'Otro dia': _date
    };
    items.forEach((name, date) {
      _widgets.add(Expanded(
        child: GestureDetector(
            onTap: () {
              setState(() {
                selectedDay = name;
                widget.cModel.year = date.year;
                widget.cModel.month = date.month;
                widget.cModel.day = date.day;
              });
            },
            child: DateContainWidget(
                cModel: widget.cModel,
                name: name,
                isSelected: name == selectedDay)),
      ));
    });
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(children: _widgets),
    );
  }
}

class DateContainWidget extends StatelessWidget {
  final CombinedModel cModel;
  final String name;
  final bool isSelected;
  const DateContainWidget(
      {super.key,
      required this.cModel,
      required this.name,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
                color: isSelected
                    ? Colors.green
                    : Theme.of(context).scaffoldBackgroundColor,
                borderRadius: BorderRadius.circular(25.0)),
            child: Center(child: Text(name)),
          ),
        ),
        isSelected
            ? FittedBox(
                fit: BoxFit.fitWidth,
                child: Text('${cModel.year}/${cModel.month}/${cModel.day}'),
              )
            : const Text('')
      ],
    );
  }
}
