import 'package:flutter/material.dart';
import 'package:flutter_add_to_cart_button/flutter_add_to_cart_button.dart';
import 'package:visaoavorelink/util/web/launch.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';
//WILTON OLIVEIRA
//visaoconsultoriaemti@gmail.com

class AppBotao extends StatefulWidget {
  String text;
  Color hoverColor;
  String imagen;
  String urlSite;
  String urlWhats;
  double fontesize;

  AppBotao(this.text,{this.hoverColor, this.imagen, this.urlSite, this.urlWhats, this.fontesize});

  @override
  _AppBotaoState createState() => _AppBotaoState();
}

class _AppBotaoState extends State<AppBotao> {
  AddToCartButtonStateId stateId = AddToCartButtonStateId.idle;

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 600,
      child: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: AddToCartButton(
                trolley: Image.asset(
                  widget.imagen,
                  width: 24,
                  height: 24,
                ),
                text: Text(
                  widget.text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: widget.fontesize ?? 14,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.fade,
                ),
                check: SizedBox(
                  width: 48,
                  height: 48,
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
                borderRadius: BorderRadius.circular(24),
                backgroundColor: Color.fromARGB(255, 211, 118, 120),
                onPressed: (id) {
                  if (id == AddToCartButtonStateId.idle) {
                    //lidar com a lógica quando pressionado no botão de estado inativo.
                    setState(() {
                      stateId = AddToCartButtonStateId.loading;
                      Future.delayed(Duration(seconds: 2), () {
                        setState(() {
                          stateId = AddToCartButtonStateId.done;
                        });
                      });
                    });

                    Future.delayed(Duration(seconds: 3), () {
                      setState(() {
                        if(widget.urlSite.isNotEmpty){
                          launch(widget.urlSite);
                        }else{
                          launchWhatsApp(widget.urlWhats);
                        }
                      });
                    });
                  } else if (id == AddToCartButtonStateId.done) {
                    //lidar com a lógica quando pressionado no botão de estado concluído.
                    setState(() {
                      stateId = AddToCartButtonStateId.idle;
                    });
                  }
                },
                stateId: stateId,
              ),
            ),
          ),
        ],
      ),
    );
  }
  launchWhatsApp(String numero) async {
    final link = WhatsAppUnilink(
      phoneNumber: numero,
      text: "Olá!",
    );
    await launch('$link');
  }
}
