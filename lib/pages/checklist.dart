import 'package:flutter/material.dart';
import 'controllers/home_controller.dart';
import 'package:google_fonts/google_fonts.dart';

class Checklist extends StatefulWidget {
  @override
  _ChecklistState createState() => _ChecklistState();
}

class _ChecklistState extends State<Checklist> {
  HomeController _controller = HomeController();

  @override
  void initState() {
    _controller.increment();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ValueListenableBuilder<int>(
          builder: (context, value, child) => Text(value.toString()),
          valueListenable: _controller.counter,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _controller.increment(),
      ),
    );
  }
}
