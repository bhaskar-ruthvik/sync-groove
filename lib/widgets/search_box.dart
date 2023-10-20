import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget{
  const SearchBox({super.key});
  @override
  Widget build(BuildContext context) {
   return Padding(
     padding: const EdgeInsets.symmetric(vertical:16.0,horizontal: 16.0),
     child: SearchBar(
      leading: Icon(Icons.search),
      hintText: 'Search',
     ),
   );
  }
}