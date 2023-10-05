import 'package:flutter/material.dart';
import 'package:fluttertestview/langapp/custom_decoration.dart';

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
        children: [_Header(), _WBC(), _TCard(), _YCard(), CourseGrid(),],
      ),
    );
  }
}


class CourseGrid extends StatelessWidget {
  const CourseGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const ClampingScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 2,
      children: _GridItem.examples.map(_GridCard.new).toList(),
      
    );
  }
}

class _GridCard extends StatelessWidget {
  const _GridCard(this.item);
  final _GridItem item;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      color: item.color.withOpacity(0.1),
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(flex: 2),
              Icon(item.icon, color: item.color),
              const Spacer(),
              Text(item.title, style: Theme.of(context).textTheme.titleLarge),
              const Spacer(),
              Text(item.subTitle),
              const Spacer(),
              LinearProgressIndicator(
                value: 0.41,
                color: item.color,
              ),
              const Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}

class _GridItem {
  _GridItem({
    required this.color,
    required this.icon,
    required this.title,
    required this.subTitle,
    required this.progress,
  });

  final Color color;
  final IconData icon;
  final String title;
  final String subTitle;
  final double progress;

  static final List<_GridItem> examples = [
    _GridItem(
      color: Colors.purple,
      icon: Icons.book_outlined,
      title: 'Reading',
      subTitle: 'Your Progress 41%',
      progress: 0.41,
    ),
    _GridItem(
      color: Colors.blue,
      icon: Icons.outbound_outlined,
      title: 'Reading',
      subTitle: 'Your Progress 2%',
      progress: 0.2,
    ),
    _GridItem(
      color: Colors.green,
      icon: Icons.outlined_flag,
      title: 'Reading',
      subTitle: 'Your Progress 50%',
      progress: 0.5,
    ),
    _GridItem(
      color: Colors.orange,
      icon: Icons.outlet_outlined,
      title: 'Reading',
      subTitle: 'Your Progress 60%',
      progress: 0.6,
    ),
  ];
}

class _YCard extends StatelessWidget {
  const _YCard();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _PagePadding.verticalNormal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Your Courses",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(fontWeight: FontWeight.bold)),
          TextButton(
            onPressed: () {},
            child: Text(
              "View all",
              style: TextStyle(color: _AppColors.primary),
            ),
          )
        ],
      ),
    );
  }
}

class _TCard extends StatelessWidget {
  const _TCard();

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: CustomDecoration(),
      child: Padding(
        padding: _PagePadding.allNormal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Chip(
                label: Text('Intermediate'),
                backgroundColor: Colors.white.withOpacity(0.25)),
            Padding(
              padding: _PagePadding.verticalLow,
              child: Text(
                "Today's Challenge",
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Theme.of(context).colorScheme.surface,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                Icon(Icons.currency_bitcoin, color: Colors.yellow),
                Padding(
                  padding: _PagePadding.onlyLeft,
                  child: Text(
                    "Take this lesson",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Theme.of(context).colorScheme.surface,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Padding(
              padding: _PagePadding.verticalNormal,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    backgroundColor: Theme.of(context).colorScheme.surface,
                    foregroundColor: Colors.green),
                onPressed: () {},
                child: Text("Tap to Start"),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _WBC extends StatelessWidget {
  const _WBC();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _PagePadding.verticalNormal,
      child: Text(
        'Welcome Back!',
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontSize: Theme.of(context).textTheme.headlineMedium?.fontSize),
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
        padding: const EdgeInsets.only(top: 2.0),
        child: Row(
          children: [
            Icon(
              Icons.pin_drop_rounded,
              color: Colors.red,
            ),
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
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

final class _PagePadding {
  const _PagePadding._();
  static const onlyLeft = EdgeInsets.only(left: 16);

  static const EdgeInsets allNormal = EdgeInsets.all(16);

  // static const EdgeInsets horizontalNormal =
  //     EdgeInsets.symmetric(horizontal: 16);

  static const EdgeInsets verticalNormal = EdgeInsets.symmetric(vertical: 16);
  static const EdgeInsets verticalLow = EdgeInsets.symmetric(vertical: 8);
}

@immutable
class _AppColors {
  const _AppColors._();

  static const Color primary = Colors.green;
}
