import 'package:flutter/material.dart';

class MessageWidget extends StatelessWidget {
  final String message;
  final String translatedMessage;
  final bool isMe;

  const MessageWidget({
    @required this.message,
    @required this.translatedMessage,
    @required this.isMe,
  });

  @override
  Widget build(BuildContext context) {
    final radius = Radius.circular(12);
    final borderRadius = BorderRadius.all(radius);

    return Row(
      //To align at different positions based on if message is from the user or not
      mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(16),
          margin: EdgeInsets.all(16),
          constraints: BoxConstraints(minWidth: 100, maxWidth: 200),
          decoration: BoxDecoration(
            color: isMe ? Colors.white : Theme.of(context).accentColor,
            borderRadius: isMe
                ? borderRadius.subtract(BorderRadius.only(bottomRight: radius))
                : borderRadius.subtract(BorderRadius.only(bottomLeft: radius)),
          ),
          child: buildMessage(),
        ),
      ],
    );
  }

  Widget buildMessage() => Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            message,
            style: TextStyle(
              color: isMe ? Colors.black54 : Colors.white70,
              fontSize: 14,
            ),
            textAlign: isMe ? TextAlign.end : TextAlign.start,
          ),
          Text(
            translatedMessage,
            style: TextStyle(
              color: isMe ? Colors.black87 : Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            textAlign: isMe ? TextAlign.end : TextAlign.start,
          ),
        ],
      );
}
