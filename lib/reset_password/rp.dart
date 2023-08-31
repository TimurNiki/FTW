import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertestview/reset_password/visible_eye.dart';

class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({super.key});

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
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
        child: const SafeArea(
          child: _SubmitButton(),
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
          const _InputField(),
        ]),
      ),
    );
  }
}

class _SubmitButton extends StatelessWidget {
  const _SubmitButton();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.purple[700]),
          onPressed: () {},
          child: const Center(child: Text(_ResetPasswordTitles.buttonText))),
    );
  }
}

class _InputField extends StatefulWidget {
  const _InputField();

  @override
  State<_InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<_InputField> {
   bool _isSecured =false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _isSecured,
      decoration: InputDecoration(
        
          labelText: _ResetPasswordTitles.newPassword,
          labelStyle: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: Colors.black),
          hintText: "Enter Password",
          contentPadding: const EdgeInsets.only(left: 16),
          border: _inputBorder(),
          enabledBorder: _inputBorder(),
          focusedBorder: _inputBorder(),
         suffixIcon: VisibleEyeButton(onChanged: (value){
          setState(() {
            _isSecured =value;
          });
         },)
         ),
    );
  }

  OutlineInputBorder _inputBorder() {
    return const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide(color: Colors.black));
  }
}

final class _ResetPasswordTitles {
  _ResetPasswordTitles._();
  static const title = 'Reset your password';
  static const subTitle = 'Lets reset your password';
  static const buttonText = 'Submit';
  static const newPassword = 'New password';
}
