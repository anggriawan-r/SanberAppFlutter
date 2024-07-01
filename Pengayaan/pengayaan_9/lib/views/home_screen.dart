part of 'screens.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Map<String, String>> chatList = [
    {"name": "Adam", "message": "Lorem ipsum dolor sit amet"},
    {"name": "Adam", "message": "Lorem ipsum dolor sit amet"},
    {"name": "Adam", "message": "Lorem ipsum dolor sit amet"},
    {"name": "Adam", "message": "Lorem ipsum dolor sit amet"},
    {"name": "Adam", "message": "Lorem ipsum dolor sit amet"},
    {"name": "Adam", "message": "Lorem ipsum dolor sit amet"},
    {"name": "Adam", "message": "Lorem ipsum dolor sit amet"},
    {"name": "Adam", "message": "Lorem ipsum dolor sit amet"},
    {"name": "Adam", "message": "Lorem ipsum dolor sit amet"},
    {"name": "Adam", "message": "Lorem ipsum dolor sit amet"},
    {"name": "Adam", "message": "Lorem ipsum dolor sit amet"},
    {"name": "Adam", "message": "Lorem ipsum dolor sit amet"},
    {"name": "Adam", "message": "Lorem ipsum dolor sit amet"},
    {"name": "Adam", "message": "Lorem ipsum dolor sit amet"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(),
      ),
      body: ChatList(chatList: chatList),
    );
  }
}
