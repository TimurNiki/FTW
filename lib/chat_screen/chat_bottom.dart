import 'package:flutter/material.dart';

class ChatBottom extends StatefulWidget {
  const ChatBottom({super.key});

  @override
  State<ChatBottom> createState() => _ChatBottomState();
}

class _ChatBottomState extends State<ChatBottom> {
  @override
  Widget build(BuildContext context) {
    return  BottomAppBar(
        
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintText: 'Type a message',
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.send),
              onPressed: () {},
            ),  IconButton(
              icon: Icon(Icons.emoji_emotions),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.mic),
              onPressed: () {},
            ),
           

          ],
        ),
      ));
  }
}