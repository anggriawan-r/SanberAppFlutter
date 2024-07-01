import 'package:flutter/material.dart';
import 'package:pengayaan_9/views/screens.dart';

class ChatList extends StatelessWidget {
  final List<Map<String, String>> chatList;
  const ChatList({super.key, required this.chatList});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemCount: chatList.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ChatScreen(),
              ),
            );
          },
          child: ListTile(
            title: Text(chatList[index]['name']!),
            subtitle: Row(
              children: [
                const Icon(Icons.check, size: 16, color: Colors.black38),
                const SizedBox(
                  width: 4,
                ),
                Text(chatList[index]['message']!),
              ],
            ),
            leading: Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                shape: BoxShape.circle,
              ),
            ),
            trailing: const Text('yesterday'),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(
          height: 0,
          indent: 96,
        );
      },
    );
  }
}
