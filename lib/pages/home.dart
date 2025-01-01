import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'widgets/bottomsheet.dart';

class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController titleController = TextEditingController();
    final TextEditingController crepController = TextEditingController();

    void _addItem() {
        if (titleController.text.isNotEmpty) {
          titleController.clear(); // テキストフィールドをクリア
        }
      Navigator.of(context).pop(); // BottomSheet を閉じる
    }
    void _showAddItemSheet() {
      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return AddItemBottomSheet(
            titlecontroller: titleController,
            crepController:crepController,
            onAddItem: _addItem,
          );
        },
      );
    }
    return Scaffold(
        backgroundColor:const Color.fromARGB(255, 245, 245, 245),
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: const Icon(Icons.account_circle, size: 48),
          title: const Text('Name',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              )),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.calendar_month_rounded, size: 32),
            ),
            const SizedBox(width: 8),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications, size: 32),
            ),
            const SizedBox(width: 24),
          ],
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start,

            children: [
          const SizedBox(
            height: 24,
          ),
          const Text("Today's Task",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              )),
          Row(
            children: [
              Text('Wednesday 01,May'),
              const SizedBox(width: 128),
              ElevatedButton(
                onPressed: ()  => _showAddItemSheet(),
                child: const Text('New Task'),
              )
            ],
          ),
        ]));
  }
}
