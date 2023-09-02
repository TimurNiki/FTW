import 'package:flutter/material.dart';

class EmptyView extends StatefulWidget {
  const EmptyView({super.key});

  @override
  State<EmptyView> createState() => _EmptyViewState();
}

class _EmptyViewState extends State<EmptyView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("data"),
      ),
    );
  }
}