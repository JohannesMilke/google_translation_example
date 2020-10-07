import 'model/message.dart';

class Data {
  static final chat = <Message>[
    Message(isMe: false, message: 'Hello'),
    Message(isMe: true, message: 'Hi, How you doing?'),
    Message(isMe: false, message: 'Great! What about you?'),
    Message(isMe: true, message: 'I\'m also doing fine'),
    Message(isMe: false, message: 'Do you like travelling?'),
    Message(isMe: true, message: 'Yes, I love travelling'),
    Message(isMe: false, message: 'Lets go on a trip'),
    Message(isMe: true, message: 'Cool, where are we going?'),
  ];
}
