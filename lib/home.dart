import 'package:flutter/material.dart';
import 'package:fluttertestview/view/padding.dart';
import 'package:fluttertestview/view/rcard.dart';
import 'model.dart';
part './view/rview.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

enum _TabItems { home, filters, favorite, shop }

class _TestState extends State<Test> {
  final List<RentModel> _rentItems = List.generate(20, (index) {
    return RentModel(
        title: 'Title $index',
        subTitle: 'SubTitle $index',
        price: 100000,
        imageUrl: "https://picsum.photos/200/300");
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _TabItems.values.length,
      child: Scaffold(
          appBar: const _AppBar(),
          bottomNavigationBar: const _BottomBar(),
          body: ListView.separated(
              padding: const EdgeInsets.all(20),
              separatorBuilder: (context, index) {
                return const _CustomDivider();
              },
              itemCount: _rentItems.length,
              itemBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.1,
                  child:RCard(model: _rentItems[index]),
                );
              })),
    );
  }
}

class _CustomDivider extends StatelessWidget {
  const _CustomDivider();

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(vertical: ProjectPadding.padding20.vertical),
      child: const Divider(
        height: 2,
        thickness: 2,
      ),
    );
  }
}

class _BottomBar extends StatelessWidget {
  const _BottomBar();

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: TabBar(
          indicatorColor: Colors.transparent,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.black26,
          tabs: [
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.filter_alt)),
            Tab(icon: Icon(Icons.favorite)),
            Tab(icon: Icon(Icons.shopping_cart))
          ]),
    );
  }
}
