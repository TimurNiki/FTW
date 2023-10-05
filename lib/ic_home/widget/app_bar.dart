part of '../home_screen.dart';

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  static const _imageUrl = 'https://randomuser.me/api/portraits/lego/2.jpg';

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      iconTheme: IconThemeData.fallback().copyWith(color: Colors.black),
      backgroundColor: Colors.transparent,
      title: Row(
        children: [_Avatar(), _Title()],
      ),
      actions: [
        _Button(
          onPressed: () {},
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _Button extends StatelessWidget {
  const _Button({required this.onPressed});
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(Icons.menu),
    );
  }
}

class _Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Hi, Nathan',
      style: Theme.of(context)
          .textTheme
          .headlineSmall
          ?.copyWith(fontWeight: FontWeight.w700),
    );
  }
}

class _Avatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: NetworkImage(_AppBar._imageUrl),
    );
  }
}
