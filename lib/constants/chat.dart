import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class Chat {
  final String avatar;
  final String chatName;
  final String mostRecentMessage;
  final int unreadMessages;
  final bool notificationMuted;
  final String date;
  final List<String> sent;
  final List<String> received;

  Chat(this.avatar, this.chatName, this.mostRecentMessage, this.unreadMessages,
      this.notificationMuted, this.date, this.sent, this.received);
}

List chatScreen = [
  Chat("AJ", randomName(), "Kab aa rha hai?", 5000, true, '1:45 PM',
      randomSentList(), randomSentList()),
  Chat("SJ", randomName(), "Kab aa rha hai?", 2, true, '1:45 PM',
      randomSentList(), randomSentList()),
  Chat("DJ", randomName(), "Kab aa rha hai?", 4, false, '1:45 PM',
      randomSentList(), randomSentList()),
  Chat("FJ", randomName(), "Kab aa rha hai?", 0, true, '1:45 PM',
      randomSentList(), randomSentList()),
  Chat("AJ", randomName(), "Kab aa rha hai?", 5000, true, '1:45 PM',
      randomSentList(), randomSentList()),
  Chat("AJ", randomName(), "Kab aa rha hai?", 5000, true, '1:45 PM',
      randomSentList(), randomSentList()),
  Chat("AJ", randomName(), "Kab aa rha hai?", 5000, true, '1:45 PM',
      randomSentList(), randomSentList()),
  Chat("AJ", randomName(), "Kab aa rha hai?", 5000, true, '1:45 PM',
      randomSentList(), randomSentList()),
  Chat("AJ", randomName(), "Kab aa rha hai?", 5000, true, '1:45 PM',
      randomSentList(), randomSentList()),
  Chat("AJ", randomName(), "Kab aa rha hai?", 5000, true, '1:45 PM',
      randomSentList(), randomSentList()),
  Chat("AJ", randomName(), "Kab aa rha hai?", 5000, true, '1:45 PM',
      randomSentList(), randomSentList()),
  Chat("AJ", randomName(), "Kab aa rha hai?", 5000, true, '1:45 PM',
      randomSentList(), randomSentList()),
  Chat("AJ", randomName(), "Kab aa rha hai?", 5000, true, '1:45 PM',
      randomSentList(), randomSentList()),
  Chat("AJ", randomName(), "Kab aa rha hai?", 5000, true, '1:45 PM',
      randomSentList(), randomSentList()),
  Chat("AJ", randomName(), "Kab aa rha hai?", 5000, true, '1:45 PM',
      randomSentList(), randomSentList()),
  Chat("AJ", "Ayush", "Kab aa rha hai?", 5000, true, '1:45 PM',
      randomSentList(), randomSentList()),
];

List<String> randomSentList() {
  List<String> res = [];
  generateWordPairs().take(10).forEach((element) {
    res.add(element.asString);
  });
  return res;
}

String randomName() {
  String res = 'Shreyans Jain';
  generateWordPairs().take(1).forEach((element) {
    res = element.first.toUpperCase() + ' ' + element.second.toUpperCase();
  });
  return res;
}
