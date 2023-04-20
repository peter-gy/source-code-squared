import 'package:flutter/material.dart';
import 'package:src_squared/model/list_item.dart';

void main() {
  runApp(const MyApp());
}

List<ListItem> baseList() {
  return ListItem.kDemoData;
}

List<ListItem> modifiedList() {
  return ListItem.kDemoData
      .map((e) => e.copyWith(title: '💥 ${e.title}'))
      .toList();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('(Source Code) x (Source Code)'),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Placeholder(
                  fallbackWidth: 80,
                  fallbackHeight: 80,
                ),
                Placeholder(
                  fallbackWidth: 80,
                  fallbackHeight: 80,
                ),
              ],
            ),
            Expanded(
              child: DemoList(
                items: modifiedList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DemoList extends StatefulWidget {
  const DemoList({
    required this.items,
    Key? key,
  }) : super(key: key);

  final List<ListItem> items;

  @override
  State<DemoList> createState() => _DemoListState();
}

class _DemoListState extends State<DemoList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: widget.items
          .map(
            (item) => Tooltip(
              message: item.toJson().toString(),
              child: ListTile(
                title: Text(item.title),
                subtitle: Text(item.subtitle),
              ),
            ),
          )
          .toList(),
    );
  }
}
