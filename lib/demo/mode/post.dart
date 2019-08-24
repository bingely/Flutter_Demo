class Post {
  int id;
  String title;
  String description;
  String author;
  String imageUrl;

  Post(this.id, this.title, this.description, this.author, this.imageUrl);

  Post.fromJson(Map json)
      : id = json['id'],
        title = json['title'],
        description = json['description'],
        author = json['author'],
        imageUrl = json['imageUrl'];

  Map toJson() => {
        'title': title,
        'description': description,
      };
}
