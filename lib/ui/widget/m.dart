import 'package:flutter/material.dart';

class COlor extends StatefulWidget {
  final Color? color;
  const COlor({Key? key, this.color}) : super(key: key);

  @override
  State<COlor> createState() => _COlorState();
}

class _COlorState extends State<COlor> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.color,
    );
  }
}
