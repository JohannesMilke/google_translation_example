import 'package:meta/meta.dart';

class Message {
  final String message;
  final bool isMe;

  const Message({
    @required this.message,
    @required this.isMe,
  });
}
