class UserModel {
  String? id;
  String? author;
  String? content;
  String? title;
  String? imageURL;
  String? time;
  String? date;

  // //  let author, content: String
  //   let date: DateEnum
  //   // let id: String
  //   let imageURL: String
  //   let readMoreURL: String?
  //   let time, title: String
  //   let url: String

  UserModel({this.id, this.author, this.content, this.title, this.imageURL, this.time, this.date});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    author = json['author'];
    content = json['content'];
    title = json['title'];
    imageURL = json['imageURL'];
    time = json['time'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['author'] = author;
    data['content'] = content;
    data['title'] = title;
    data['imageURL'] = imageURL;
    data['time'] = time;
    data['date'] = date;
    return data;
  }
}
