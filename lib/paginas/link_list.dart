import 'package:flutter/material.dart';
import 'package:visaoavorelink/util/app_botao.dart';
import 'package:visaoavorelink/util/app_texto.dart';
//WILTON OLIVEIRA
//visaoconsultoriaemti@gmail.com
class LinkList extends StatefulWidget {
  @override
  _LinkListState createState() => _LinkListState();
}

class _LinkListState extends State<LinkList> {
  Size get size => MediaQuery.of(context).size;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Widget _buildBodyBack() => Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 211, 118, 130),
              Color.fromARGB(255, 253, 181, 168),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildBodyBack(),
        _body(),
      ],
    );
  }

  _body() {
    return ListView(
      children: [
        Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(40),
                        child: CircleAvatar(
                            radius: 65,
                            backgroundColor: Colors.white,
                            child: Container(
                              padding: EdgeInsets.all(5),
                              child: Image.asset(
                                  "assets/visaoSoftware.png"),
                            )),
                      ),
                      Container(
                        child: text("@visaoconsultoriaemti",
                            fontSise: 18,
                            bold: true,
                            priMaiusula: true,
                            textAlign: TextAlign.center,
                            fontFamily: 'Livvic',
                            decoration: TextDecoration.none),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: text(
                            "Sistemas para micros, pequenas e médias empresas.",
                            fontSise: 12,
                            bold: true,
                            priMaiusula: true,
                            textAlign: TextAlign.center,
                            fontFamily: 'Livvic',
                            decoration: TextDecoration.none),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: size.width > 940 ? size.width * 0.50 : size.width * 0.8,
                child: AppBotao(
                  "Instagran",
                  urlWhats: "",
                  imagen: 'assets/Instagram-Icon.png',
                  urlSite:
                      "https://www.instagram.com/visaoconsultoriaemti/?hl=pt-br",
                  fontesize: 16,
                ),
              ),
              SizedBox(
                width: size.width > 940 ? size.width * 0.50 : size.width * 0.8,
                child: AppBotao(
                  "Facebook",
                  urlWhats: "",
                  urlSite:
                      "https://www.facebook.com/Vis%C3%A3o-Consultoria-em-TI-167799616657453",
                  imagen: "assets/image-face.png",
                  fontesize: 16,
                ),
              ),
              SizedBox(
                width: size.width > 940 ? size.width * 0.50 : size.width * 0.8,
                child: AppBotao(
                  "Youtube",
                  urlWhats: "",
                  urlSite:
                      "https://www.youtube.com/channel/UCKHui8WMdP8X1p3eUHf0ngQ",
                  imagen: "assets/youtube_icon.png",
                  fontesize: 16,
                ),
              ),
              SizedBox(
                width: size.width > 940 ? size.width * 0.50 : size.width * 0.8,
                child: AppBotao(
                  "Site",
                  urlSite: "https://www.sistemavisao.com/",
                  urlWhats: "",
                  imagen: "assets/site.png",
                  fontesize: 16,
                ),
              ),
              SizedBox(
                width: size.width > 940 ? size.width * 0.50 : size.width * 0.8,
                child: AppBotao(
                  "WhatsApp 1",
                  urlWhats: "5566992418884",
                  urlSite: "",
                  imagen: "assets/image-whats.png",
                  fontesize: 16,
                ),
              ),
              SizedBox(
                width: size.width > 940 ? size.width * 0.50 : size.width * 0.8,
                child: AppBotao(
                  "WhatsApp 2",
                  urlWhats: "5566992367304",
                  imagen: "assets/image-whats.png",
                  urlSite: "",
                  fontesize: 16,
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                child: text("#NósSomosVisão",
                    fontSise: 12,
                    bold: true,
                    color: Colors.indigo[500],
                    textAlign: TextAlign.center,
                    fontFamily: 'Livvic',
                    decoration: TextDecoration.none),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                child: text("Por: Visão Consultoria em T.I",
                    fontSise: 11,
                    bold: true,
                    color: Colors.indigo[500],
                    textAlign: TextAlign.center,
                    fontFamily: 'Livvic',
                    decoration: TextDecoration.none),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
