import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertestview/chat_screen/model/user.dart';

class UserAppBar extends StatelessWidget implements PreferredSizeWidget {
  const UserAppBar({super.key, required this.user});
  final ChatUser user;
  @override
  Widget build(BuildContext context) {
    return AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.arrow_back_sharp),
        elevation: 0,
        leadingWidth: 15,
        centerTitle: false,
        iconTheme: IconThemeData(color: Colors.black),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(user.ppUrl),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user.fullName,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(user.position,
                      style: Theme.of(context).textTheme.titleSmall),
                ],
              ),
            )
          ],
        ),
        );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
