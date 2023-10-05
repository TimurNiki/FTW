import 'package:flutter/material.dart';
part '../ic_home/widget/app_bar.dart';
part '../ic_home/widget/card.dart';

class IcHomeScreen extends StatefulWidget {
  const IcHomeScreen({super.key});

  @override
  State<IcHomeScreen> createState() => _IcHomeScreenState();
}

extension on BuildContext {
  Size get sizeOf => MediaQuery.sizeOf(this);
  ThemeData get themeOf => Theme.of(this);
}

class _IcHomeScreenState extends State<IcHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AppBar(),
      body: ListView(
        children: [
          Text("What's your problem?",
          style: context.themeOf.textTheme.titleMedium,),
          TextField(decoration: InputDecoration(
            hintText: 'Search',
            suffixIcon: Icon(Icons.search),
             fillColor: Colors.grey[200],
              filled: true,
              border: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius:
                    BorderRadius.all(Radius.circular(16)),
              ),
          ),
            
          ),
          _PageBody()
        ],
      ),
    );
  }
}

class _PageBody extends StatelessWidget {
  const _PageBody();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.sizeOf.height * 0.5,
      child: PageView.builder(
        padEnds: false,
        physics: ClampingScrollPhysics(),
        itemCount: 5,
        controller: PageController(viewportFraction: 0.9),
        pageSnapping: false,
        itemBuilder: (context, index) {
          return UnconstrainedBox(
            child: SizedBox(
              width: context.sizeOf.width * 0.75,
              height: context.sizeOf.height * 0.5,
              child: _Card(),
            ),
          );
        },
      ),
    );
  }
}

