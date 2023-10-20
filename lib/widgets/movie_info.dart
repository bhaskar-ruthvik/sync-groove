import 'package:flutter/material.dart';

class MovieTile extends StatelessWidget{
  const MovieTile({super.key,required this.title, required this.imagePath});
  final title;
  final imagePath;
  
  @override
  Widget build(BuildContext context) {
    final imageUrl = 'http://image.tmdb.org/t/p/original${imagePath}';
    return SizedBox(
      height: 100,
      child: Card(
        semanticContainer: true,
      shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
      clipBehavior: Clip.hardEdge,
      elevation: 2,
      child: Stack(
        children: [
          Image.network(imageUrl,height: 200,fit: BoxFit.cover,),
          
        ],
      ),
    ),
    )
    ;
  }
}