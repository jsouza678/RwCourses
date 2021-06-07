import '../strings.dart';

enum Domain {
  all,
  ios,
  android,
  flutter,
  sss,
  unity,
  macos,
  archived,
  unkwnown
}

extension DomainExtension on Domain {
  String get name {
    switch (this) {
      case Domain.ios:
        return Strings.ios;
      case Domain.all:
        return Strings.all;
      case Domain.android:
        return Strings.android;
      case Domain.flutter:
        return Strings.flutter;
      case Domain.sss:
        return Strings.sss;
      case Domain.macos:
        return Strings.macos;
      case Domain.unity:
        return Strings.unity;
      case Domain.archived:
        return Strings.archived;
      default:
        return Strings.unknown;
    }
  }
}
