import 'package:biblog/data/mock/blog_mock.dart';
import 'package:biblog/models/blog.dart';
import 'package:biblog/views/widgets/blog_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final List<Blog> blogs = getBlogMock();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Biblog'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: blogs.length,
          itemBuilder: (context, index) {
            final Blog blog = blogs[index];
            return Container(
              margin: const EdgeInsets.only(bottom: 16.0),
              child: BlogWidget(blog: blog),
            );
          },
        ),
      ),
    );
  }
}
