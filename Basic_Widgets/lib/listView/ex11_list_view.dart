import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class Comment {
  final String text;

  Comment({required this.text});
}

class Ex11ListView extends StatefulWidget {
  const Ex11ListView({super.key});

  @override
  _Ex11ListViewState createState() => _Ex11ListViewState();
}

class _Ex11ListViewState extends State<Ex11ListView> {
  List<Comment> comments = [];

  @override
  void initState() {
    super.initState();
    loadComments();
  }

  Future<void> loadComments() async {
    final jsonContent = await rootBundle.loadString('assets/json/comment.json');
    final jsonData = json.decode(jsonContent);
    final List<Comment> loadedComments = [];

    for (var item in jsonData) {
      final comment = Comment(text: item['text']);
      loadedComments.add(comment);
    }

    setState(() {
      comments = loadedComments;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 251, 248, 248),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(
            color: Color.fromARGB(255, 233, 221, 221),
            height: 1.0,
          ),
        ),
      ),
      body: ListView.separated(
        itemCount: comments.length,
        itemBuilder: (context, index) {
          final comment = comments[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              comment.text,
              style: TextStyle(
                color: Colors.black,
                fontSize: 27,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => Divider(
          color: Color.fromARGB(255, 233, 221, 221),
          thickness: 1.0,
        ),
      ),
    );
  }
}
