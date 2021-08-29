import 'package:flutter/material.dart';
//WILTON OLIVEIRA
//visaoconsultoriaemti@gmail.com
_camelCase(String nomeD) {
  String text = nomeD.toLowerCase();
  String capitalize(Match m) =>
      m[0].substring(0, 1).toUpperCase() + m[0].substring(1);
  String skip(String s) => " ";
  //print(text.splitMapJoin(new RegExp(r'[a-z]+'), onMatch: capitalize, onNonMatch: skip));

  return text.splitMapJoin(new RegExp(r'[a-z]+'),
      onMatch: capitalize, onNonMatch: skip);
}

_priMaiuscula(String nomeD) {
  String priTexto = nomeD.substring(0, 1).toUpperCase();
  String restoTexto = nomeD.substring(1, nomeD.length).toLowerCase();
  String resultado = priTexto + restoTexto;

  return resultado;
}

Text text(
  String texTo, {
  double fontSise = 16,
  color = Colors.black,
  bold = false,
  int maxLines,
  TextOverflow overflow,
  TextAlign textAlign,
  String fontFamily,
  TextDecoration decoration,
  camelCase = false,
  priMaiusula = false,
}) {
  return camelCase
      ? Text(
          camelCase ? _camelCase(texTo) : texTo ?? "",
          maxLines: maxLines ?? 1,
          overflow: overflow,
          textAlign: textAlign,
          style: TextStyle(
            decoration: decoration,
            fontSize: fontSise,
            color: color,
            fontFamily: fontFamily,
            fontWeight: bold ? FontWeight.bold : FontWeight.normal,
          ),
        )
      : Text(
          priMaiusula ? _priMaiuscula(texTo) : texTo ?? "",
          maxLines: maxLines ?? 1,
          overflow: overflow,
          textAlign: textAlign,
          style: TextStyle(
              decoration: decoration,
              fontSize: fontSise,
              color: color,
              fontFamily: fontFamily,
              fontWeight: bold ? FontWeight.bold : FontWeight.normal),
        );
}
