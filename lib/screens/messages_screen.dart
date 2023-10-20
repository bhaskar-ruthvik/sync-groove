import 'package:flutter/material.dart';

class MessagesScreen extends StatefulWidget{
  const MessagesScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MessagesScreenState();
  }
}

class _MessagesScreenState extends State<MessagesScreen>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 32.0,left: 16.0),
                child: Text('Your Conversations',
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