class PostModel {
  final String? imag;
  final String? des;
  final String titel;
  const PostModel({required this.imag, required this.des, required this.titel});
  factory PostModel.fromJson( json) {
    return PostModel(
      titel: json['title'],
      des: json['description'],
      imag: json['urlToImage'],
    );
  }
}
