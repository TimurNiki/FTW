import 'package:flutter/material.dart';

import 'lang_dropdown.dart';

class LAView extends StatefulWidget {
  const LAView({super.key});

  @override
  State<LAView> createState() => _LAViewState();
}

class _LAViewState extends State<LAView> {
  static const _imageUrl = 'https://randomuser.me/api/portraits/lego/2.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _Appbar(),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16),
        children: [
          _Header(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:8.0),
            child: Text('Welcome Back!',style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontSize: Theme.of(context).textTheme.headlineMedium?.fontSize
            ),),
          )
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header();

 

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(_LAViewState._imageUrl),
      ),
      title: Text(
        "Nathan Jonhson",
        style: Theme.of(context).textTheme.titleLarge,
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only (top:2.0),
        child: Row(
          children: [
            Icon(Icons.pin_drop_rounded,
            color: Colors.red,),
            SizedBox(
              width: 5,
            ),
            Text('United Kingdom'),
          ],
        ),
      ),
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
