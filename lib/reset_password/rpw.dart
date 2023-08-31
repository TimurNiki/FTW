part of './rp.dart';
final class _ResetPasswordTitles {
  _ResetPasswordTitles._();
  static const title = 'Reset your password';
  static const subTitle = 'Lets reset your password';
  static const buttonText = 'Submit';
  static const newPassword = 'New password';
}
class _InputField extends StatefulWidget {
  const _InputField(this.controller);
 final TextEditingController controller;
  @override
  State<_InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<_InputField> {
   bool _isSecured =false;
  
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: TextFormField(
        validator: (value){
          return ResetValidator(value).controlandMessage();
        },
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
      ),
    );
  }

  OutlineInputBorder _inputBorder() {
    return const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide(color: Colors.black));
  }
}

