import 'package:flutter/foundation.dart';

class Chat {
  final String name;
  String message;
  final String time;
  final String imageUrl;

  Chat({
    @required this.name,
    @required this.message,
    @required this.time,
    @required this.imageUrl,
  });
}

List<Chat> messageData = [
  Chat(
    name: "Hitesh Garg",
    message: "Hey dude , What's Up ?",
    time: "10:12",
    imageUrl:
        "https://images.pexels.com/photos/1149022/pexels-photo-1149022.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  ),
  Chat(
    name: "Thor",
    message: "You were born an original , don't die a copy",
    time: "02:16",
    imageUrl:
        "https://images.pexels.com/photos/1427288/pexels-photo-1427288.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  ),
  Chat(
    name: "Captain America",
    message: "If it doesn't challenge you , it won't change you",
    time: "11:11",
    imageUrl:
        "https://images.pexels.com/photos/2108706/pexels-photo-2108706.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  ),
  Chat(
    name: "Odin",
    message: "Hey there",
    time: "20:21",
    imageUrl:
        "https://images.pexels.com/photos/1650281/pexels-photo-1650281.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  ),
  Chat(
    name: "Dr. Strange",
    message: "The dark fire will not avail you! Flame of Udûn!",
    time: "1:12",
    imageUrl:
        "https://images.pexels.com/photos/1397364/pexels-photo-1397364.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  ),
  Chat(
    name: "Tony Stark",
    message:
        "I gave you the chance of aiding me willingly, but you have elected the way of pain.",
    time: "11:11",
    imageUrl:
        "https://images.pexels.com/photos/2108706/pexels-photo-2108706.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  ),
  Chat(
    name: "Hella",
    message: "Wanna play ? ",
    time: "20:21",
    imageUrl:
        "https://images.pexels.com/photos/1650281/pexels-photo-1650281.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  ),
  Chat(
    name: "Loki",
    message: "The dark fire will not avail you! Flame of Udûn!",
    time: "1:12",
    imageUrl:
        "https://images.pexels.com/photos/1397364/pexels-photo-1397364.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  )
];
