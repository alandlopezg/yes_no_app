enum FromWho {me, hers}

class Message {
  final String text;
  final String? imageURL;
  final FromWho fromWho;

  const Message({
    required this.text,
    this.imageURL,
    required this.fromWho,
  });
}
