import 'package:easycomply/pages/model/checkbox_state.dart';
import 'package:flutter/material.dart';
import 'controllers/home_controller.dart';

class Checklist extends StatefulWidget {
  @override
  _ChecklistState createState() => _ChecklistState();
}

class _ChecklistState extends State<Checklist> {
  // HomeController _controller = HomeController();

  final items = [
    CheckBoxState(title: "primeira lei"),
    CheckBoxState(title: "segunda lei"),
    CheckBoxState(title: "terceira lei"),
    CheckBoxState(title: "quarta lei"),
    CheckBoxState(title: "quinta lei"),
    CheckBoxState(title: "sexta lei"),
  ];

  @override
  void initState() {
    // _controller.increment();
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
          ...items.map(buildSingleCheckbox).toList()
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
    onChanged: (value) => setState(() => checkbox.value = value!),
  );
}

// @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: ValueListenableBuilder<int>(
//           builder: (context, value, child) => Text(value.toString()),
//           valueListenable: _controller.counter,
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => _controller.increment(),
//       ),
//     );
//   }
