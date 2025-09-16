import 'package:flutter/material.dart';

//----Class Abstrak----
abstract class ListItem {
  Widget buildTitle(BuildContext context);
  Widget buildSubtitle(BuildContext context);
}

class HeadingItem implements ListItem {
  final String heading;
  HeadingItem(this.heading);

  @override
  Widget buildTitle(BuildContext context) {
    return Text(
      heading,
      style: const TextStyle(
        color: Colors.blue,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  @override
  Widget buildSubtitle(BuildContext context) => const SizedBox.shrink();
}

class MessageItem implements ListItem {
  final String sender;
  final String body;
  MessageItem(this.sender, this.body);

  @override
  Widget buildTitle(BuildContext context) => Text(sender);

  @override
  Widget buildSubtitle(BuildContext context) => Text(body);
}

//----Image Item-----
class ImageItem implements ListItem {
  final String imagePath;
  final String title;
  ImageItem(this.imagePath, this.title);

  @override
  Widget buildTitle(BuildContext context) =>
      Text(title, style: const TextStyle(fontWeight: FontWeight.bold));

  @override
  Widget buildSubtitle(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4.0),
      child: Image.asset(
        imagePath,
        height: 50,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}

//---Widget utama---
class Tugas3Page extends StatelessWidget {
  const Tugas3Page({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ListItem> items = List<ListItem>.generate(30, (i) {
      if (i % 3 == 0) {
        final imageIndex = (i ~/ 3) % 3 + 1;
        return ImageItem('asset/pemandangan.jpeg', 'Image Item $i');
      } else {
        return MessageItem('Sender $i', 'Message body $i');
      }
    });

    return Scaffold(
      appBar: AppBar(title: const Text("List dengan Berbagai Item")),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return ListTile(
              title: item.buildTitle(context),
              subtitle: item.buildSubtitle(context),
            );
          }),
    );
  }
}
