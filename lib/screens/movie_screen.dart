import 'package:flutter/material.dart';
import 'package:sync_groovy/providers/popular_movies_provider.dart';
import 'package:sync_groovy/widgets/movie_info.dart';


class MovieScreen extends StatefulWidget{
  const MovieScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MovieScreenState();
  }
}

class _MovieScreenState extends State<MovieScreen>{
  
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 32.0,left: 16.0),
                child: Text('Movies and TV',
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.titleLarge,
                          ),
              ),
              SizedBox(height: 20,),
              Expanded(
                child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: POPULAR_MOVIES_LIST.length,
                itemBuilder: (ctx,index){
                return MovieTile(title: POPULAR_MOVIES_LIST[index]['title'], imagePath: POPULAR_MOVIES_LIST[index]['poster_path']);
              })),
              SizedBox(height: 100,),
               Padding(
                padding: const EdgeInsets.only(top: 16.0,left: 16.0,bottom: 10),
                child: Text('Newly Released',
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.titleLarge,
                          ),
              ),
              
              Expanded(
                child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: POPULAR_MOVIES_LIST.length,
                itemBuilder: (ctx,index){
                return MovieTile(title: POPULAR_MOVIES_LIST[index]['title'], imagePath: POPULAR_MOVIES_LIST[index]['poster_path']);
              })),
              SizedBox(height: 100,),
              Center(
                child: Text('Space')
              )
              
          ],
        ),
      ),
    );
  }
}