import 'dart:convert';
import 'package:http/http.dart'
    as http; // Contains a client for making API calls

void main() {
  getAPIData();
}

class Audition {
  Audition(this.title, this.location, this.type, this.payment, this.postedDate,
      this.deadlineDate);
  String title;
  String location;
  String type;
  String payment;
  String postedDate;
  String deadlineDate;
}

Future getAPIData() async {
  List<Audition> auditionList;
  var url = Uri.parse(
      'https://simplescraper.io/api/S5h4fH1ygiQP5um2j9tu?apikey=XXrtyTOYVBiqaYQeqZmoVooLEQihXIo9&limit=100');

  http.Response response = await http.get(url);

  switch (response.statusCode) {
    case 200:
      String data = response.body;
      return jsonDecode(data);

    default:
      return "Whoops something went wrong";
  }
}
