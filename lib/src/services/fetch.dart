import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';
import 'dart:async';

import '../models/page_model.dart';

final String url = 'https://api.vimeo.com/users/18489706/albums/4573565/videos';

Future fetchPage() async {
  final response = await http.get(url, headers: {
    HttpHeaders.authorizationHeader: "bearer 87192ec346036edb03684db21e41e3e7",
  });

  return Page.fromJson(json.decode(response.body));
}
