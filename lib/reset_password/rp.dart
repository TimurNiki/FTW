import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertestview/reset_password/reset_validator.dart';
import 'package:fluttertestview/reset_password/rp_mixin.dart';
import 'package:fluttertestview/reset_password/visible_eye.dart';
part "rpw.dart";
class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({super.key});

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> with RPMixin {

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle:SystemUiOverlayStyle.dark ,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        leading: const Icon(Icons.chevron_left_outlined),
      ),
      bottomNavigationBar:  Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.viewInsetsOf(context).bottom)   + const EdgeInsets.symmetric(horizontal: 16),
        child:  SafeArea(
          child: _SubmitButton(
            onSubmitPressed
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            _ResetPasswordTitles.title,
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text(_ResetPasswordTitles.subTitle),
          ),
           _InputField(controller),
        ]),
      ),
    );
  }
}

class _SubmitButton extends StatelessWidget {
  const _SubmitButton(this.onPressed);
  final VoidCallback? onPressed;
  
static const double _buttonHeight = 56;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _buttonHeight,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.purple[700]),
          onPressed: () {},
          child: const Center(child: Text(_ResetPasswordTitles.buttonText))),
    );
  }
}

