import 'package:flutter/material.dart';
import 'package:flutter26/blog/add_blog_screen.dart';
import 'package:flutter26/blog/edit_blog_screen.dart';
import 'package:flutter26/blog/story_view.dart';

import 'blog.dart';

class BlogScreen extends StatefulWidget {
  const BlogScreen({Key? key}) : super(key: key);

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  final String imageUrl =
      "https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg";
  final String name = "Amir Mohammed";

  final String blogImageUrl =
      "https://imgd.aeplcdn.com/1056x594/n/cw/ec/44686/activa-6g-right-front-three-quarter.jpeg";

  List<Blog> blogs = [
    Blog(
        title: "Piano",
        body:
            "a large keyboard musical instrument with a wooden case enclosing a soundboard and metal strings, which are struck by hammers when the keys are depressed. The strings' vibration is stopped by dampers when the keys are released and can be regulated for length and volume by two or three pedals.",
        imageUrl:
            "https://cdn1.img.sputnikarabic.ae/img/104012/71/1040127161_0:171:4032:2439_600x0_80_0_0_bf877107b21a7dab90c7ce76c503464d.jpg"),
    Blog(
        title: "Titanic submarine",
        body:
            "Missing Titanic submarine LIVE: Can bodies be retrieved after implosion? Experts weigh in",
        imageUrl:
            "https://phantom-marca.unidadeditorial.es/e78616bbda77fe6fbc6b1ed5a05d3232/resize/828/f/webp/assets/multimedia/imagenes/2023/06/21/16873550466244.png"),
    Blog(
        title: "Customizztion Cars",
        body:
            "Two Customized Cars Rolling Through A City Street Photo Photo of two customized cars on a city side street. One car is raised up and the other is very low.",
        imageUrl:
            "https://burst.shopifycdn.com/photos/two-customized-cars-rolling-through-a-city-street.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Blog"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => navigateToAddBlogScreen(),
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: ListView.builder(
              itemCount: 8,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => userItem(),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: blogs.length,
              itemBuilder: (context, index) => blogItem(index),
            ),
          )
        ],
      ),
    );
  }

  Widget userItem() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => StoryViewScreen(),
            ));
      },
      child: Container(
        margin: const EdgeInsets.all(5),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: NetworkImage(imageUrl),
                ),
                const CircleAvatar(
                  radius: 13,
                  backgroundColor: Colors.white,
                ),
                const CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.green,
                ),
              ],
            ),
            Text(
              name.length > 8 ? "${name.substring(0, 8)}..." : name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Widget blogItem(int index) {
    Blog blog = blogs[index];

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        // border: const Border.fromBorderSide(
        //   BorderSide(color: Colors.black),
        // ),
        color: Colors.grey[300],
      ),
      margin: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Image.network(
              blog.imageUrl,
              height: 150,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    blog.title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    navigateToEditBlogScreen(index);
                  },
                  icon: const Icon(
                    Icons.edit,
                    color: Colors.purple,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    blogs.removeAt(index);
                    setState(() {});
                  },
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              blog.body,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  navigateToAddBlogScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AddNewBlogScreen(),
      ),
    ).then((value) {
      Blog blog = value;
      blogs.add(blog);
      setState(() {});
    });
  }

  void navigateToEditBlogScreen(int index) {
    final Blog blog = blogs[index];

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EditBlogScreen(
          title: blog.title,
          body: blog.body,
          imageUrl: blog.imageUrl,
        ),
      ),
    ).then((value) {
      if (value == null) return;
      final Blog blog = value;
      blogs[index] = blog;
      setState(() {});
    });
  }
}
