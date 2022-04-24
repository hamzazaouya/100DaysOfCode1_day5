import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List notes = [
    {
      "title": "hello world 1",
      "note": "hello world this is ousam",
      "date": "24 april",
      "image": "1.jpg"
    },
    {
      "title": "hello world 2",
      "note": "hello world this is ousam",
      "date": "25 april",
      "image": "1.jpg"
    },
    {
      "title": "hello world 3",
      "note": "hello world this is ousam",
      "date": "26 april",
      "image": "1.jpg"
    },
    {
      "title": "hello world 4",
      "note": "hello world this is ousam",
      "date": "30 april",
      "image": "1.jpg"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home Page"),
          centerTitle: true,
        ),
        body: Container(
          child: ListView.builder(
              itemCount: notes.length,
              itemBuilder: (context, i) {
                return Dismissible(key: Key("$i"), child: ListNotes(notes[i]));
              }),
        ));
  }
}

class ListNotes extends StatelessWidget {
  final Map note;

  ListNotes(this.note);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("${note['title']}"),
      subtitle: Text("${note['date']}"),
    );
  }
}
