import 'package:http/http.dart'; // Contains a client for making API calls
import 'package:web_scraper/web_scraper.dart';
import 'dart:convert';

void main() {
  getSiteData();
}

class Audition {
  Audition(this.name, this.date, this.link);
  String name;
  DateTime date;
  String link;
}

Future getSiteData() async {
  // Website filters like '?sort_by=created&sort_order=DESC'
  List<Audition> AuditionList;
  final webScraper = WebScraper('https://www.vancouveractorsguide.com/');
  if (await webScraper.loadWebPage('/auditions')) {
    for (var i = 1; i < 100; i++) {
      List<Map<String, dynamic>> elements = webScraper.getElement(
          '#block-system-main > div > div.view-content > div > table > tbody > tr:nth-child($i) > td.views-field.views-field-title > a',
          ['href']);
      print(elements.runtimeType);
      // AuditionList.add(Audition(name, date, link));
    }
  } else {
    print('Somthing went wrong! Try again later.');
  }
}
