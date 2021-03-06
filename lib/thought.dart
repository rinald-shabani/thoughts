import 'package:flutter/material.dart';

// This class represents a thought.
class Thought {
  final String username;
  final String thought;

  Thought(this.username, this.thought);

  Thought.fromJson(dynamic json) : 
    username = json['username'], 
    thought = json['thought'];
  
  Map<String, dynamic> toJson() => 
    {
      'username': username,
      'thought': thought
    };
}

// Display a thought as a [ListTile].
class ThoughtTile extends StatelessWidget {
  final Thought thought;
  ThoughtTile(this.thought);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(thought.username),
          subtitle: Text(thought.thought),
        ),
        Divider(height: 2.0),
      ],
    );
  }
}