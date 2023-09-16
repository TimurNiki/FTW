import 'package:flutter/material.dart';
import 'auth_m.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(flex: 4, child: _bodyH()),
          Expanded(
            flex: 3,
            child:
                _body(AuthM(title: "Best bla bla", description: "Explore bla")),
          )
        ],
      ),
    );
  }
}

class _bodyH extends StatelessWidget {
  const _bodyH();

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _ImagePath.ex.png,
      fit: BoxFit.cover,
    );
  }
}

class _body extends StatelessWidget {
  const _body(this.model);
  final AuthM model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _Emptybox(),
        Text(
          model.title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize:
                    Theme.of(context).textTheme.headlineLarge?.fontSize,
              ),
        ),
        _Emptybox(),
        Text(
          model.description,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.w300,
              ),
        ),
        _Emptybox(),
        _GetStarted(),
      ],
    );
  }
}

class _GetStarted extends StatelessWidget {
  const _GetStarted();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          backgroundColor: Theme.of(context).colorScheme.error),
      child: Padding(
        padding: EdgeInsets.all(24),
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.5,
          child: Center(child: Text("Get Started")),
        ),
      ),
    );
  }
}

class _Emptybox extends StatelessWidget {
  const _Emptybox();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
    );
  }
}

class _ImagePath {
  static const ex = 'ex';
}

extension on String {
  String get png => 'assets/img/$this.PNG';
}
