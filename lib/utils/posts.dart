class Post {
  int id;
  String title;
  String image;
  String detail;

  Post({this.id, this.title, this.image, this.detail});

  factory  Post.fromJson(Map<String, dynamic> json) {
    return Post(detail: json['body'], title: json['title'], id: json['id'], image: 'assets/images/image1.jpg');
  }
}

class Comment {
  int id;
  String name;
  String email;
  String body;

  Comment({this.id, this.name, this.email, this.body});

  factory  Comment.fromJson(Map<String, dynamic> json) {
    return Comment(body: json['body'], name: json['name'], id: json['id'], email: json['email']);
  }
}


List<Post> posts = [
  ...[1,2,3,4,5,6,7,8,9,10].map((e) {
    return Post(id: e, title: "Post Title $e", detail: "Post Detail $e", image: 'assets/images/image1.jpg');
  })
];