import '../constants.dart';
import 'domain.dart';

class Course {
  final String courseId;
  final String name;
  final String description;
  final String difficulty;
  final String contributorString;
  final String cardArtworkUrl;
  final List<Domain> domains;

  Course(this.courseId, this.name, this.description, this.difficulty,
      this.contributorString, this.cardArtworkUrl, this.domains);

  Course.fromJson(Map<String, dynamic> json)
      : courseId = json["id"],
        name = json["attributes"]["name"],
        description = json["attributes"]["description_plain_text"],
        difficulty = json["attributes"]["difficulty"],
        contributorString = json["attributes"]["contributor_string"],
        cardArtworkUrl = json["attributes"]["card_artwork_url"],
        domains = [] {
    var domainData = json["relationships"]["domains"]["data"] as List<dynamic>;
    if (domainData != null && domainData.length > 0) {
      for (var i = 0; i < domainData.length; i++) {
        var domain =
            Course.getDomain(json["relationships"]["domains"]["data"][i]["id"]);
        domains.add(domain);
      }
    }
  }

  static Domain getDomain(String domainId) {
    switch (domainId) {
      case Constants.iosDomain:
        return Domain.ios;
      case Constants.androidDomain:
        return Domain.android;
      case Constants.flutterDomain:
        return Domain.flutter;
      case Constants.sssDomain:
        return Domain.sss;
      case Constants.macosDomain:
        return Domain.macos;
      case Constants.archivedDomain:
        return Domain.archived;
      case Constants.unityDomain:
        return Domain.unity;
      default:
        return Domain.unkwnown;
    }
  }

  get domainsString {
    String result = "";
    for (var i = 0; i < domains.length - 1; i++) {
      result += domains[i].name + ", ";
    }
    result += domains.last.name;
    return result;
  }

  @override
  String toString() {
    return "\n" + name + ', difficulty: ' + domainsString;
  }
}
