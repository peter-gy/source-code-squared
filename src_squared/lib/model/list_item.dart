class ListItem {
  const ListItem({
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;

  factory ListItem.fromJson(Map<String, dynamic> json) => ListItem(
        title: json['title'] as String,
        subtitle: json['subtitle'] as String,
      );

  Map<String, dynamic> toJson() => {
        'title': title,
        'subtitle': subtitle,
      };

  ListItem copyWith({
    String? title,
    String? subtitle,
  }) {
    return ListItem(
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
    );
  }

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
