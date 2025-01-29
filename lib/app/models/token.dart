class Token {
  final String access;
  final String refresh;
  Token({
    required this.access,
    required this.refresh,
  });

  factory Token.fromMap(Map<String, dynamic> map) {
    return Token(
      access: map['access'],
      refresh: map['token'],
    );
  }
}
