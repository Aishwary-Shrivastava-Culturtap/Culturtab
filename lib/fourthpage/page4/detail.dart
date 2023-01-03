import 'package:flutter/material.dart';

class detail extends StatelessWidget {
  const detail({super.key, this.productname});
  final productname;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: Text(productname),
      ),
    );
  }
}