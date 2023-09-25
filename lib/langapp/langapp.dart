import 'package:flutter/material.dart';

import 'lang_dropdown.dart';

class LAView extends StatefulWidget {
  const LAView({super.key});

  @override
  State<LAView> createState() => _LAViewState();
}

class _LAViewState extends State<LAView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _Appbar(),
    );
  }
}

class _Appbar extends StatelessWidget implements PreferredSizeWidget {
  const _Appbar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.black),
      leading: Icon(Icons.menu_outlined),
      actions: [
        LangDropDown(),
      ],
    );
  }

  
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
