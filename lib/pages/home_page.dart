import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';
import 'package:hackathon_cp/pages/map_page.dart';
import 'package:hackathon_cp/shared/Themes/text_styles.dart';
import 'package:hackathon_cp/shared/widgets/social_login/banner_recomendados.dart';
import 'package:hackathon_cp/shared/widgets/tile_trend_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentPage = 0;
  final pages = [
    Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Container(
        key: UniqueKey(),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  "Recomendados",
                  textAlign: TextAlign.left,
                  style: TextStyles.title,
                ),
              ),
              Divider(
                height: 24,
                color: Colors.transparent,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Row(
                    children: [
                      BannerRecomedadosWidgets(
                        title: "Alto Paraíso",
                        description:
                            "Ecoturismo, misticismo, aventura e cultura",
                        link: "/chapada-dos-veadeiros.jpg",
                      ),
                      BannerRecomedadosWidgets(
                        title: "Cavalcante",
                        description:
                            "Ecoturismo, misticismo, aventura e cultura",
                        link: "/cavalcante.jpg",
                      ),
                      BannerRecomedadosWidgets(
                        title: "Pirenopolis",
                        description: "Ecoturismo, aventura, cultura, rural",
                        link: "/pirenopolis.jpg",
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 24,
                color: Colors.transparent,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "Em alta",
                  textAlign: TextAlign.left,
                  style: TextStyles.title,
                ),
              ),
              Divider(
                height: 24,
                color: Colors.transparent,
              ),
              Column(
                children: [
                  TileTrendWidget(
                    title: "Chapada dos veadeiros",
                    link: "/chapada-dos-veadeiros.jpg",
                    distance: 2.3,
                  ),
                  TileTrendWidget(
                    title: "Rota do Cangaço",
                    link: "/rota%20do%20canga%C3%A7o%20e%20lampiao.jpg",
                    distance: 40,
                  ),
                  TileTrendWidget(
                    title: "Caminho de São Francisco",
                    link: "/Caminhos%20do%20São%20Francisco.jpg",
                    distance: 30,
                  ),
                  TileTrendWidget(
                    title: "Rota do cangaço",
                    link: "/rota%20do%20canga%C3%A7o%20e%20lampiao.jpg",
                    distance: 500,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
    SafeArea(child: MapPage()),
    AnimatedCard(direction: AnimatedCardDirection.left, child: Container()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        onTap: (value) {
          print("teste $value");
          currentPage = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text("home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            title: Text("Mapa"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.adjust),
            title: Text("ajustes"),
          ),
        ],
        currentIndex: currentPage,
      ),
    );
  }
}
