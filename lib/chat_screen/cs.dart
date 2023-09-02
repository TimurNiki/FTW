import 'package:flutter/material.dart';
import 'package:fluttertestview/chat_screen/model/listchat.dart';
import 'package:fluttertestview/chat_screen/model/user.dart';
import 'package:fluttertestview/chat_screen/user_appbar.dart';

import 'chat_bottom.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final users = ListChat.users;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UserAppBar(user: ChatUserMixin.chatUser),
      bottomNavigationBar: ChatBottom(),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          if (index.isOdd) return const SizedBox();
          return const Center(
            child: Text("10:56 AM"),
          );
        },
        itemCount: users.length,
        padding: EdgeInsets.symmetric(horizontal: 16),
        itemBuilder: (BuildContext context, int index) {
          return _UserChatCard(users[index]);
        },
      ),
    );
  }
}

class _UserChatCard extends StatelessWidget {
  const _UserChatCard(this.model);
  final ListChat model;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: model.isSenderOtherUser
          ? Alignment.centerRight
          : Alignment.centerLeft,
      child: ConstrainedBox(
        constraints:
            BoxConstraints(maxWidth: MediaQuery.sizeOf(context).width * 0.8),
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: model.isSenderOtherUser ? Colors.red : Colors.white,
          child: Padding(
            padding: EdgeInsets.all(0),
            child: Text(
              model.text,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: model.isSenderOtherUser ? Colors.white : Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
