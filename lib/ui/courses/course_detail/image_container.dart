import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  final double width;
  final double height;
  final String url;
  final Color placeholder;

  const ImageContainer(
      {Key key,
      this.width,
      this.height,
      this.placeholder = const Color(0xFF333333),
      @required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: placeholder,
          image: url.contains("http")
              ? DecorationImage(image: NetworkImage(url))
              : null),
    );
  }
}
