import 'package:flutter/material.dart';
import 'package:flutter_review/InSessionTasks/WidgetsFile/App_CustomisedWidgets_V.dart';
class PickDate extends StatefulWidget {
  const PickDate({super.key});

  @override
  State<PickDate> createState() => _PickDateState();
}

class _PickDateState extends State<PickDate> {
  DateTime? selectedDate;
  String date ='';
  AppCustomisedwidgetsV acwv = new AppCustomisedwidgetsV();

  Future<void> _selectDate() async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime(2000, 1, 1),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    setState(() {
      selectedDate = pickedDate;
      date = selectedDate != null
          ? '${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}'
          : 'No date selected';
      print(date);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 20,
      children: <Widget>[
        acwv.buildOutput('Date',date, _selectDate),
      ],
    );
  }

}