import 'package:flutter/material.dart';

class Salary extends StatefulWidget {
  const Salary({Key? key}) : super(key: key);

  @override
  State<Salary> createState() => _SalaryState();
}

class _SalaryState extends State<Salary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: const Text('Salary'),
    ));
  }
}
