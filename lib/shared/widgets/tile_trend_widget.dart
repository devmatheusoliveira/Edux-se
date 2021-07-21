import 'package:flutter/material.dart';

class TileTrendWidget extends StatelessWidget {
  final title;
  final link;
  final distance;
  const TileTrendWidget(
      {Key? key,
      required this.link,
      required this.title,
      required this.distance})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bancoDeDados =
        "https://github.com/matheusOliveira99/testeJson/blob/main/json/img";
    return Padding(
      padding: const EdgeInsets.only(left: 25, bottom: 20),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  alignment: Alignment.center,
                  image: NetworkImage(
                    "$bancoDeDados$link?raw=true",
                  ),
                ),
              ),
              width: 70,
              height: 70,
            ),
          ),
          Expanded(
            child: Container(
              height: 70,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    "$distance Km de distancia",
                    style: TextStyle(color: Colors.green, fontSize: 15),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
