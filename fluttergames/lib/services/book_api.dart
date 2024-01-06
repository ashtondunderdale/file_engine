import 'package:google_books_api/google_books_api.dart';

Future<List<Book>> getBooks() async {
  final List<Book> books = await const GoogleBooksApi().searchBooks(
    'philosophy', 
    maxResults: 1,
    printType: PrintType.books,
    orderBy: OrderBy.relevance,
  );

  for (var book in books){
    print(book.volumeInfo.imageLinks);
  }

  return books;
}