part of 'screens.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Color(0xff074e46),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.video_camera_front,
              color: Colors.white54,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.call,
              color: Colors.white54,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
        title: Row(
          children: [
            Container(
              width: 38,
              height: 38,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Adam',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'online',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          ],
        ),
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xff075e55),
      ),
      body: Container(
        color: const Color(0xffa8dad8),
        child: Stack(
          children: [
            ListView(
              padding: const EdgeInsets.all(8),
              children: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
                  .asMap()
                  .entries
                  .map((item) {
                int index = item.key;
                return Column(
                  crossAxisAlignment: index % 2 == 0
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 240,
                      height: 64,
                      decoration: BoxDecoration(
                        color: index % 2 == 0
                            ? Colors.white
                            : const Color(0xffe2ffc7),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    )
                  ],
                );
              }).toList(),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(64),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Type a message',
                    hintStyle: const TextStyle(color: Colors.grey),
                    prefixIcon: const Icon(
                      Icons.emoji_emotions_outlined,
                      color: Colors.grey,
                    ),
                    suffixIcon: const Icon(
                      Icons.attach_file,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
