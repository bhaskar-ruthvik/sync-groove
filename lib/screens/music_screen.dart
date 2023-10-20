import 'package:flutter/material.dart';

class MusicScreen extends StatefulWidget{
  const MusicScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MusicScreenState();
  }
}

class _MusicScreenState extends State<MusicScreen>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 32.0,left: 16.0),
                child: Text('Music',
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