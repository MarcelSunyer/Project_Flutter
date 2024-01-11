import 'package:flutter/material.dart';

class TopicWidget extends StatelessWidget {
  final List<String> topics;

  TopicWidget({required this.topics});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: topics
            .map(
              (topic) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: TopicPill(topic: topic),
              ),
            )
            .toList(),
      ),
    );
  }
}

class TopicPill extends StatelessWidget {
  final String topic;

  TopicPill({required this.topic});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.grey[300], 
        borderRadius: BorderRadius.circular(20.0), 
      ),
      child: Text(
        topic,
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}