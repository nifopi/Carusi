import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

String? codigobase64(
  String? username,
  String? password,
) {
  // argumeto , username e password retorna base64

  String credentials = '$username:$password';
  String encodedCredentials = base64.encode(utf8.encode(credentials));
  return encodedCredentials;
}

int? convertInt(String? numero) {
  if (numero == null) {
    return null;
  }

  // Divide a string em partes usando o ponto como separador e pega a primeira parte.
  String numeroSemPonto = numero.split(".")[0];

  int? numeroInteiro = int.tryParse(numeroSemPonto);

  return numeroInteiro;
}

String? convertDatatime(int? timestamp) {
  if (timestamp != null) {
    DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(timestamp);
    DateFormat outputFormat = DateFormat("d/M/y H:mm");
    String output = outputFormat.format(dateTime);
    return output;
  }

  return null; // Retorna null se timestamp for nulo
}

String? formatData(String? input) {
  if (input == null) {
    return null;
  }

  DateFormat inputFormat = DateFormat("dd MMM yyyy HH:mm:ss 'GMT'");
  DateTime dateTime = inputFormat.parse(input);
  DateFormat outputFormat = DateFormat("dd/MM/yyyy HH:mm");
  String output = outputFormat.format(dateTime);
  return output;
}

bool? exitePedidoAmizade(
  List<dynamic>? jsonData,
  String? targetId,
) {
  if (jsonData != null) {
    for (var data in jsonData) {
      final fromProfile = data?["fromprofile"];
      if (fromProfile != null && fromProfile["id"] == targetId) {
        return true;
      }
    }
  }

  return false;
}

dynamic textToArray(String? inputString) {
  if (inputString != null) {
    List<String> stringList = inputString.split(',');
    return stringList;
  }
}

String? idOpcoes(
  List<dynamic> data,
  String? descricao,
) {
  for (var item in data) {
    if (item["title"] == descricao) {
      return item["id"];
    }
  }
  return "";
}

int? pgDetails(List<dynamic> data) {
  for (var item in data) {
    if (item["option_id"] == null) {
      return item["questionnum"];
    }
  }
  return null;
}

String? idDetails(List<dynamic> data) {
  for (var item in data) {
    if (item["option_id"] == null) {
      return item["id"];
    }
  }
  return "";
}

double? calculoMedia(List<dynamic> lista) {
  if (lista.isEmpty) {
    return 0.0; // Ou qualquer valor padrão que faça sentido para o seu caso
  }

  // Calcular a soma dos ratings
  double somaRating = lista.fold(0.0, (total, item) => total + item['rating']);

  // Calcular a média
  double media = somaRating / lista.length;

  return media;
}

int? length(dynamic lista) {
  if (lista != null && lista is Iterable) {
    return lista.length;
  }

  return null;
}
