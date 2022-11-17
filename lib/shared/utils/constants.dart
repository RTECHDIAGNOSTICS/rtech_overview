
import 'dart:developer';

import 'package:url_launcher/url_launcher.dart';

String getWordsExceptFirst(String inputString) {
  List<String> wordList = inputString.split(" ");
  if (wordList.isNotEmpty) {
    wordList.removeAt(0);
    var stringList = wordList.join(" ");
    return stringList;
  } else {
    return ' ';
  }
}

String getFirstWord(String inputString) {
  List<String> wordList = inputString.split(" ");
  if (wordList.isNotEmpty) {
    return wordList[0];
  } else {
    return ' ';
  }
}

Future<void> launchInBrowser(Uri url) async {
  log(url.toString());
  if (!await launchUrl(
    url,
    mode: LaunchMode.externalApplication,
  )) {
    throw 'Could not launch $url';
  }
}


