

class Location {
  final String name;
  final String location;
  final double ranking;
  final String imageUrl;
  final String description = 'It is a long established fact that a reader will '
                        'be distracted by the readable content of a page when '
                        'looking at its layout. The point of using Lorem Ipsum '
                        'is that it has a more-or-less normal distribution of letters, '
                        'as opposed to using Content here, content here, making '
                        'it look like readable English.';
  final double price;
  Location( {required this.name, required this.ranking, required this.imageUrl , required this.location, required this.price});
}
