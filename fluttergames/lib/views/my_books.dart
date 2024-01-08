import 'package:flutter/material.dart';
import 'package:fluttergames/widgets/discover/book_item.dart';
import 'package:google_books_api/google_books_api.dart';

import '../globals.dart';


class MyBooks extends StatelessWidget {
  const MyBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Books",
          style: TextStyle(
            color: textColour,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
        shape: const Border(
          bottom: BorderSide(
            color: Color.fromARGB(255, 214, 214, 214)
          )
        ),
      ),
      body: Row(
        children: [
          for (Book book in myBooks)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: BookItem(book: book),
          )
        ],
      ),
    );
  }
}
