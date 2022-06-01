import 'dart:core';
import 'package:flutter/material.dart';

class FlipCardDetails extends StatefulWidget {
  final String imagePath;

  const FlipCardDetails({
    required Key key,
    required this.imagePath,
  }) : super(key: key);

  @override
  State<FlipCardDetails> createState() => _FlipCardDetailsState();
}

class _FlipCardDetailsState extends State<FlipCardDetails> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          widget.imagePath,
          key: ValueKey<String>(widget.imagePath),
          height: 250,
          width: 175,
          fit: BoxFit.fill,
        ),
      ],
    );
  }
}

class FlipcardMobile extends StatefulWidget {
  const FlipcardMobile({Key? key, required this.imagpath}) : super(key: key);
  final String imagpath;

  @override
  State<FlipcardMobile> createState() => _FlipcardMobileState();
}

class _FlipcardMobileState extends State<FlipcardMobile> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      widget.imagpath,
      key: ValueKey<String>(widget.imagpath),
      height: 100,
      width: 50,
      fit: BoxFit.fill,
    );
  }
}

class FlipCardDetailsMobile extends StatefulWidget {
  const FlipCardDetailsMobile({Key? key, required this.imagePath})
      : super(key: key);
  final String imagePath;

  @override
  State<FlipCardDetailsMobile> createState() => _FlipCardDetailsMobileState();
}

class _FlipCardDetailsMobileState extends State<FlipCardDetailsMobile> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      widget.imagePath,
      key: ValueKey<String>(widget.imagePath),
      height: 160,
      width: 115,
      fit: BoxFit.fill,
    );
  }
}
