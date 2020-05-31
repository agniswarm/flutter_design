class Tile {
  String name;
  bool active;
  Tile({
    this.active,
    this.name,
  });
}

List<Tile> tiles = [
  Tile(active: true, name: 'Styles'),
  Tile(active: false, name: 'Classes'),
  Tile(active: false, name: 'Teachers'),
];
