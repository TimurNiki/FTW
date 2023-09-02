final class ChatUser{
  final String fullName;
  final String position;
  final String ppUrl;

  ChatUser({required this.fullName, required this.position,required this.ppUrl});

  
}

mixin ChatUserMixin{
  static ChatUser chatUser = ChatUser(
    fullName: "Nathan Smith",
    position: "CEO",
    ppUrl: "https://randomuser.me/api/portraits/lego/2.jpg"
  );
}