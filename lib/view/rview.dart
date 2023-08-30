part of '../home.dart';

class _AppBar extends StatelessWidget  implements PreferredSizeWidget{
  const _AppBar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.black,
      elevation: 0,
      title: const _SearchField(),
      actions: [IconButton(onPressed: () {} ,icon: const Icon(Icons.menu))],
      leading: ElevatedButton(
       style: OutlinedButton.styleFrom(
        shape: const CircleBorder(),
        backgroundColor: Colors.transparent,
        elevation: 0,
        // side: const BorderSide(color:Colors.black, width: 2)
       ),
        onPressed: () {}, child:const Icon(Icons.chevron_left, color: Colors.black,))
    );
  }
  
  @override
  
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _SearchField extends StatelessWidget {
  const _SearchField();

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        hintText: 'Search',
        contentPadding: EdgeInsets.zero,
        enabledBorder:OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(color: Colors.black12, width: 1)
        ),
        prefixIcon: Icon(Icons.search),
      ),
    );
  }
}