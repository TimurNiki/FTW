final class ListChat{
  final String text;
  final bool isSenderOtherUser;

  ListChat({required this.text, required this.isSenderOtherUser});

  static final List<ListChat> users = List.generate(20, (index) {
    return ListChat(
      text:'$index message' ,
      isSenderOtherUser: index.isOdd,
    );
  });
}