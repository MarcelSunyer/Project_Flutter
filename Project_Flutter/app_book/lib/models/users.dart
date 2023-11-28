class Book {
  final int rank;
  final String title;
  final String author;
  final String description;
  final String imageUrl;
  final String amazonUrl;

  Book({
    required this.rank,
    required this.title,
    required this.author,
    required this.description,
    required this.imageUrl,
    required this.amazonUrl,
  });

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      rank: json['rank'],
      title: json['title'],
      author: json['author'],
      description: json['description'],
      imageUrl: json['book_image'],
      amazonUrl: json['buy_links'][0]['url'], // Assuming the first link is Amazon
    );
  }
}