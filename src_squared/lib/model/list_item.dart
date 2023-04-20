import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_item.freezed.dart';

part 'list_item.g.dart';

@freezed
class ListItem with _$ListItem {
  const factory ListItem({
    required String title,
    required String subtitle,
  }) = _ListItem;

  factory ListItem.fromJson(Map<String, dynamic> json) =>
      _$ListItemFromJson(json);

  // Each item is a programming language and a very brief description of it.
  static const kDemoData = [
    ListItem(
      title: 'Dart',
      subtitle: 'A client-optimized language for fast apps on any platform.',
    ),
    ListItem(
      title: 'Python',
      subtitle:
          'An interpreted, high-level, general-purpose programming language.',
    ),
    ListItem(
      title: 'Java',
      subtitle:
          'A general-purpose programming language that is class-based, object-oriented, and designed to have as few implementation dependencies as possible.',
    ),
    ListItem(
      title: 'C++',
      subtitle: 'A general-purpose programming language.',
    ),
    ListItem(
      title: 'C#',
      subtitle:
          'A general-purpose, multi-paradigm programming language encompassing strong typing, lexically scoped, imperative, declarative, functional, generic, object-oriented (class-based), and component-oriented programming disciplines.',
    ),
    ListItem(
      title: 'JavaScript',
      subtitle: 'A high-level, interpreted programming language.',
    ),
    ListItem(
      title: 'Kotlin',
      subtitle:
          'A cross-platform, statically typed, general-purpose programming language with type inference.',
    ),
    ListItem(
      title: 'Swift',
      subtitle:
          'A general-purpose, multi-paradigm, compiled programming language developed by Apple Inc. for iOS, iPadOS, macOS, watchOS, tvOS, Linux, and z/OS.',
    ),
    ListItem(
      title: 'Go',
      subtitle:
          'A statically typed, compiled programming language designed at Google by Robert Griesemer, Rob Pike, and Ken Thompson.',
    ),
  ];
}
