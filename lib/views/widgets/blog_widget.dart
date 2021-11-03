import 'package:biblog/models/blog.dart';
import 'package:flutter/material.dart';

class BlogWidget extends StatelessWidget {
  const BlogWidget({
    Key? key,
    required this.blog,
  }) : super(key: key);

  final Blog blog;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              blog.title,
              style: Theme.of(context).textTheme.headline6,
            ),
            const Divider(thickness: 2),
            Text(
              blog.body,
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ],
        ),
      ),
    );
  }
}
