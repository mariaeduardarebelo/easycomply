import 'package:easycomply/pages/model/checkbox_state.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Checklist extends StatefulWidget {
  @override
  _ChecklistState createState() => _ChecklistState();
}

class _ChecklistState extends State<Checklist> {

  var updatedItems;

  @override
  void initState() {
    var box = Hive.box<CheckBoxState>('lgpd_checkboxes');

    updatedItems = box.toMap()
      .entries.map((checkboxItem) => checkboxItem.value)
      .toList();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checklist'),
        backgroundColor: Color(0xFF1C4E89),
      ),
      body: ListView(
        padding: EdgeInsets.all(12.0),
        children: [
          ...updatedItems.map(buildSingleCheckbox).toList()
        ],
      ),
    );
  }

  buildSingleCheckbox(CheckBoxState checkbox) => CheckboxListTile(
        controlAffinity: ListTileControlAffinity.leading,
        activeColor: Color(0xFF1C4E89),
        value: checkbox.value,
        title: Text(
          checkbox.title,
          style: TextStyle(fontSize: 20.0),
        ),
        onChanged: (value) => setState(() {
          checkbox.value = value!;
          checkbox.save();
        }),
      );
}
