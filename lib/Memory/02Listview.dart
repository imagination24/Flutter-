import 'package:flutter/material.dart';
///scrollDirection: Axis.horizontal横向滚动
void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home : Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("Echo",style: TextStyle(color: Colors.white70)),
            backgroundColor: Colors.indigo,
          ),
          body: const ContentBody(),
          backgroundColor: Colors.white38,
        )
    );
  }
}
class ContentBody extends StatelessWidget {
  const ContentBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ContentItem("title1", "desc1", "https://i0.hdslb.com/bfs/article/59babed869ed8307ce05c228f3388a8bb32dc43d.jpg@942w_707h_progressive.webp"),
              ContentItem("title3", "desc3", "https://i0.hdslb.com/bfs/article/b9444b78b9907ec3d13c132612a9fac861f6d303.png@942w_584h_progressive.webp"),
              ContentItem("title2", "desc2", "https://i0.hdslb.com/bfs/article/2948afc3547240476a0f73fb3b3871b170a88166.jpg@942w_707h_progressive.webp"),
              ContentItem("title3", "desc3", "https://i0.hdslb.com/bfs/article/b9444b78b9907ec3d13c132612a9fac861f6d303.png@942w_584h_progressive.webp"),
              ContentItem("title1", "desc1", "https://i0.hdslb.com/bfs/article/59babed869ed8307ce05c228f3388a8bb32dc43d.jpg@942w_707h_progressive.webp"),
              ContentItem("title3", "desc3", "https://i0.hdslb.com/bfs/article/b9444b78b9907ec3d13c132612a9fac861f6d303.png@942w_584h_progressive.webp"),
              ContentItem("title2", "desc2", "https://i0.hdslb.com/bfs/article/2948afc3547240476a0f73fb3b3871b170a88166.jpg@942w_707h_progressive.webp"),
            ],
          ),
        ),
        Container(
          height: 250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ContentItem("title1", "desc1", "https://i0.hdslb.com/bfs/article/59babed869ed8307ce05c228f3388a8bb32dc43d.jpg@942w_707h_progressive.webp"),
              ContentItem("title2", "desc2", "https://i0.hdslb.com/bfs/article/2948afc3547240476a0f73fb3b3871b170a88166.jpg@942w_707h_progressive.webp"),
              ContentItem("title2", "desc2", "https://i0.hdslb.com/bfs/article/2948afc3547240476a0f73fb3b3871b170a88166.jpg@942w_707h_progressive.webp"),
              ContentItem("title3", "desc3", "https://i0.hdslb.com/bfs/article/b9444b78b9907ec3d13c132612a9fac861f6d303.png@942w_584h_progressive.webp"),
              ContentItem("title1", "desc1", "https://i0.hdslb.com/bfs/article/59babed869ed8307ce05c228f3388a8bb32dc43d.jpg@942w_707h_progressive.webp"),
              ContentItem("title3", "desc3", "https://i0.hdslb.com/bfs/article/b9444b78b9907ec3d13c132612a9fac861f6d303.png@942w_584h_progressive.webp"),
              ContentItem("title2", "desc2", "https://i0.hdslb.com/bfs/article/2948afc3547240476a0f73fb3b3871b170a88166.jpg@942w_707h_progressive.webp"),
            ],
          ),
        ),
        Container(
          height: 250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ContentItem("title2", "desc2", "https://i0.hdslb.com/bfs/article/2948afc3547240476a0f73fb3b3871b170a88166.jpg@942w_707h_progressive.webp"),
              ContentItem("title3", "desc3", "https://i0.hdslb.com/bfs/article/b9444b78b9907ec3d13c132612a9fac861f6d303.png@942w_584h_progressive.webp"),
              ContentItem("title2", "desc2", "https://i0.hdslb.com/bfs/article/2948afc3547240476a0f73fb3b3871b170a88166.jpg@942w_707h_progressive.webp"),
              ContentItem("title3", "desc3", "https://i0.hdslb.com/bfs/article/b9444b78b9907ec3d13c132612a9fac861f6d303.png@942w_584h_progressive.webp"),
              ContentItem("title1", "desc1", "https://i0.hdslb.com/bfs/article/59babed869ed8307ce05c228f3388a8bb32dc43d.jpg@942w_707h_progressive.webp"),
              ContentItem("title3", "desc3", "https://i0.hdslb.com/bfs/article/b9444b78b9907ec3d13c132612a9fac861f6d303.png@942w_584h_progressive.webp"),
              ContentItem("title2", "desc2", "https://i0.hdslb.com/bfs/article/2948afc3547240476a0f73fb3b3871b170a88166.jpg@942w_707h_progressive.webp"),
            ],
          ),
        ),
        Container(
          height: 250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ContentItem("title1", "desc1", "https://i0.hdslb.com/bfs/article/59babed869ed8307ce05c228f3388a8bb32dc43d.jpg@942w_707h_progressive.webp"),
              ContentItem("title2", "desc2", "https://i0.hdslb.com/bfs/article/2948afc3547240476a0f73fb3b3871b170a88166.jpg@942w_707h_progressive.webp"),
              ContentItem("title2", "desc2", "https://i0.hdslb.com/bfs/article/2948afc3547240476a0f73fb3b3871b170a88166.jpg@942w_707h_progressive.webp"),
              ContentItem("title3", "desc3", "https://i0.hdslb.com/bfs/article/b9444b78b9907ec3d13c132612a9fac861f6d303.png@942w_584h_progressive.webp"),
              ContentItem("title1", "desc1", "https://i0.hdslb.com/bfs/article/59babed869ed8307ce05c228f3388a8bb32dc43d.jpg@942w_707h_progressive.webp"),
              ContentItem("title3", "desc3", "https://i0.hdslb.com/bfs/article/b9444b78b9907ec3d13c132612a9fac861f6d303.png@942w_584h_progressive.webp"),
              ContentItem("title2", "desc2", "https://i0.hdslb.com/bfs/article/2948afc3547240476a0f73fb3b3871b170a88166.jpg@942w_707h_progressive.webp"),
            ],
          ),
        ),
      ],
    );
  }
}

class ContentItem extends StatelessWidget {
  final String title;
  final String desc;
  final String image;
  ContentItem(this.title,this.desc,this.image);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: 200,
      height: 250,
      child: Column(
        children: [
          Text(title,style: TextStyle(color: Colors.indigo,fontSize: 30,decorationStyle: TextDecorationStyle.solid),),
          Text(desc),
          Image.network(image)
        ],
      ),
    );
  }
}



