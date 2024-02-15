import 'package:flutter/material.dart';

class HomeTitleTile extends StatelessWidget {
  const HomeTitleTile(
      {super.key, required this.tileHeading, required this.function});

  final String tileHeading;

  final VoidCallback function;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(tileHeading),
      trailing: TextButton(
        onPressed: function,
        child: const Text("See More"),
      ),
    );
  }
}
