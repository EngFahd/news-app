import 'package:flutter/material.dart';
import 'package:news_app/models/postModel.dart';

class PostWidgit extends StatelessWidget {
  const PostWidgit({
    super.key,
    required this.postModel,
  });
  final PostModel postModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(
                postModel.imag ??
                    'https://thenounproject.com/api/private/icons/3322737/edit/?backgroundShape=SQUARE&backgroundShapeColor=%23000000&backgroundShapeOpacity=0&exportSize=752&flipX=false&flipY=false&foregroundColor=%23000000&foregroundOpacity=1&imageFormat=png&rotation=0',
                height: 400,
                width: double.infinity,
                fit: BoxFit.cover,
              )),
          const SizedBox(
            height: 12,
          ),
          Text(
            postModel.titel,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            postModel.des ?? ' ',
            maxLines: 2,
            style: const TextStyle(color: Colors.grey, fontSize: 14),
          )
        ],
      ),
    );
  }
}
