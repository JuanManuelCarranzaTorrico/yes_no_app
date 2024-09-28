import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{
  List<Message> messageList = [
    Message(text: "Hola Gotica", fromWho: FromWho.me),
    Message(text: "Ya Volviste?", fromWho: FromWho.me)
  ];

  Future<void> sendMessage (String text ) async {
    //todo implementar metodo
  }
}