import 'package:flutter/foundation.dart';

class Calls {
  final String name;
  final String time;
  final String imageUrl;

  Calls({
    @required this.name,
    @required this.time,
    @required this.imageUrl,
  });
}

List<Calls> callData = [
  Calls(
      name: "Hitesh Garg",
      time: "10 April, 6:03 pm",
      imageUrl:
          "https://images.pexels.com/photos/1149022/pexels-photo-1149022.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
  Calls(
      name: "Thor",
      time: "10 April, 6:03 pm",
      imageUrl:
          "https://images.pexels.com/photos/1427288/pexels-photo-1427288.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
  Calls(
      name: "Tony Stark",
      time: "10 April, 6:03 pm",
      imageUrl:
          "https://images.pexels.com/photos/2108706/pexels-photo-2108706.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
  Calls(
      name: "Odin",
      time: "14 April, 6:08pm",
      imageUrl:
          "https://images.pexels.com/photos/1650281/pexels-photo-1650281.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
  Calls(
      name: "Hella",
      time: "11 April, 7:03 pm",
      imageUrl:
          "https://images.pexels.com/photos/1397364/pexels-photo-1397364.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")
];
