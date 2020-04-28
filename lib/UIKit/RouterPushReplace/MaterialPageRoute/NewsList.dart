import 'package:flutter/material.dart';
import 'News.dart';
import 'NewsDetail.dart';

class NewsListPage extends StatelessWidget {
  final String title;
  NewsListPage({Key key,@required this.title}):super(key:key);
  final news=List<News>.generate(20, (i)=>News("新闻 $i","新闻 $i的详细信息"),);


  show(BuildContext context,String name){
    showDialog(
      context: context,
      builder: (BuildContext context){
        return new SimpleDialog(
          title: Text(name),
          children: <Widget>[
            new SimpleDialogOption(
              child: new Text('确定'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: ListView.builder(itemBuilder: (context,index){
        return ListTile(
          title: Text(news[index].title),
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context)=>NewsDetail(s_new: news[index],),
              )
            ).then((name){
              show(context, name);
            });
          },
        );
      },
        itemCount: news.length,
      ),
    );

  }
}