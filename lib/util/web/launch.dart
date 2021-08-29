import 'dart:html' as html;
//WILTON OLIVEIRA
//visaoconsultoriaemti@gmail.com
launch(String url) {
  html.window.open(url,"site");
}

back() {
  html.window.history.back();
}

forward() {
  html.window.history.forward();
}

share([Map data]) {
  html.window.navigator.share(data);
}
