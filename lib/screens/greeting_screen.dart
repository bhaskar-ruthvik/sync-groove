import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sync_groovy/widgets/search_box.dart';
import 'package:sync_groovy/providers/spotify_token_provider.dart';


class GreetingScreen extends StatefulWidget{
  @override
  State<GreetingScreen> createState() => _GreetingScreenState();
}

class _GreetingScreenState extends State<GreetingScreen> {
  // bool _isGettingToken = true;
  // bool _isGettingArtist = true;
  var imageUrl;
 
@override
  void initState() {
    
    super.initState();
    search_for_artist('Ariana Grande');
   
  }
  void getAlbums() async {
    final headers = {'Authorization' : 'Bearer $AUTH_TOKEN'};
    final url = Uri.https('api.spotify.com','v1/albums/',{'ids': '4aawyAB9vmqN3uQ7FjRGTy'});
    final res = await http.get(url,headers: headers);
    print(res.body);
  }

  void getUser() async{
    final headers = {'Authorization' : 'Bearer $AUTH_TOKEN'};
    final url = Uri.https('api.spotify.com','v1/me');
    final res = await http.get(url,headers: headers);
    print(res.body);
  }
  void search_for_artist(String artist_name) async {
    final auth_tok = await get_token();
    final headers = {'Authorization' : 'Bearer $auth_tok'};
    final url = Uri.https('api.spotify.com','v1/search/',{'q': artist_name,'type': 'artist','limit': '3'});
    final res = await http.get(url,headers: headers);
    print(res.body);
    setState(() {
      imageUrl = json.decode(res.body)['artists']['items'][0]['images'][0]['url'];
     
    });
    print(imageUrl);
    
  }

  String getTimeOfDay(){
    final timeData = DateTime.now();
    if(timeData.hour>=0 && timeData.hour<12){
      return 'Morning';
    }
    else if(timeData.hour>=12 && timeData.hour<16){
      return 'Afternoon';
    }
    else if(timeData.hour>=16 && timeData.hour<24){
      return 'Evening';
    }
    else{
      return 'Error';
    }
  }

  @override
  Widget build(BuildContext context) {
     
    
    final greeting = getTimeOfDay();
    return SafeArea(
      child: Scaffold(
          
          body: 
          // _isGettingToken || _isGettingArtist ? 
          // Center(child: CircularProgressIndicator(),) 
          // : 
          Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 32.0,left: 16.0),
                child: Text('Good ${greeting}, Beti',
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.titleLarge,
                          ),
              ),
              
             
             

             
            ],
          ),
        ),
    );
  }
}