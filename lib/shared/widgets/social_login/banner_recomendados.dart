import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hackathon_cp/shared/Themes/text_styles.dart';

class BannerRecomedadosWidgets extends StatelessWidget {
  final String? link;
  final String? title;
  final String? description;
  const BannerRecomedadosWidgets({
    Key? key,
    required this.link,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bancoDeDados =
        "https://github.com/matheusOliveira99/testeJson/blob/main/json/img";
    return Padding(
      padding: const EdgeInsets.only(right: 25),
      child: Container(
        width: 250,
        height: 300,
        child: Expanded(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    alignment: Alignment.center,
                    image: NetworkImage(
                      "$bancoDeDados$link?raw=true",
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    gradient: LinearGradient(
                        end: Alignment.center,
                        begin: Alignment.bottomCenter,
                        colors: [
                          Colors.black87,
                          Colors.black45,
                          Colors.transparent
                        ])),
                width: double.maxFinite,
                height: double.maxFinite,
              ),
              Container(
                width: double.maxFinite,
                height: double.maxFinite,
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text.rich(
                    TextSpan(
                      text: "$title \n",
                      style: TextStyles.bannerTitle,
                      children: [
                        TextSpan(
                          text: description,
                          style: TextStyles.bannerDescription,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
