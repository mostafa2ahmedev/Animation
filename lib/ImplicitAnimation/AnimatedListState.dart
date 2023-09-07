import 'package:flutter/material.dart';

class AnimatedListStateEx extends StatefulWidget {
  const AnimatedListStateEx({super.key});

  @override
  State<AnimatedListStateEx> createState() => _AnimatedListStateExState();
}

class _AnimatedListStateExState extends State<AnimatedListStateEx> {
  final GlobalKey<AnimatedListState> listKey = GlobalKey();
  List<String> list = [];
  // الليست الي عندنا لها ستيت ف محتاجين نكنترول ع الستيت دي  عشان نابديت الستيت بتاع الليست بتاعتنا
  void removeItem(int index) {
    setState(() {
      list.removeAt(index);
      listKey.currentState!.removeItem(
        index,
        duration: const Duration(milliseconds: 500),
        (context, animation) => ListTile(
          title: Text(list[index]),
          textColor: Colors.red,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated List State'),
      ),
      body: AnimatedList(
        key: listKey,
        itemBuilder: (context, index, animation) {
          return SizeTransition(
            sizeFactor: animation,
            child: Container(
              color: Colors.purple,
              child: ListTile(
                title: Text(list[index]),
                trailing: IconButton(
                  onPressed: () {
                    removeItem(index);
                  },
                  icon: const Icon(Icons.delete),
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            list.insert(0, 'New ${list.length}');
            listKey.currentState!.insertItem(0);
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
