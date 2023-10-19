import 'package:flutter/material.dart';
import 'package:news_app/models/postModel.dart';
import 'package:news_app/widgits/post.dart';

class SliverlistPost extends StatelessWidget {
  const SliverlistPost({super.key, required this.listPost});
  final List<PostModel> listPost;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: listPost.length,
        (context, index) {
          return PostWidgit(
            postModel: listPost[index],
          );
        },
      ),
    );
  }
}

// class PostListViwe extends StatelessWidget {
//   const PostListViwe({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       // build all widgets but that may be effect of application
//       // shrinkWrap: true,
//       physics: BouncingScrollPhysics(),
//       itemCount: 10,
//       itemBuilder: (context, index) {
//         return Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               ClipRRect(
//                   borderRadius: BorderRadius.circular(6),
//                   child: Image.network(
//                     'https://ichef.bbci.co.uk/news/976/cpsprodpb/F382/production/_123883326_852a3a31-69d7-4849-81c7-8087bf630251.jpg.webp',
//                     height: 400,
//                     width: double.infinity,
//                     fit: BoxFit.cover,
//                   )),
//               const SizedBox(
//                 height: 12,
//               ),
//               const Text(
//                 'Test',
//                 maxLines: 2,
//                 overflow: TextOverflow.ellipsis,
//                 style: TextStyle(
//                   color: Colors.black87,
//                   fontSize: 20,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//               const SizedBox(
//                 height: 8,
//               ),
//               const Text(
//                 'test',
//                 maxLines: 2,
//                 style: TextStyle(color: Colors.grey, fontSize: 14),
//               )
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
