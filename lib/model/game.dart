enum Shape {
  rock,
  paper,
  scissors;

  bool? win(Shape against) {
    if (this == against) {
      return null;
    }

    switch (this) {
      case Shape.rock:
        return against == Shape.scissors;
      case Shape.paper:
        return against == Shape.rock;
      case Shape.scissors:
        return against == Shape.paper;
    }
  }

  Shape guide(String s) {
    switch (s) {
      // loose
      case 'X':
        switch (this) {
          case Shape.rock:
            return Shape.scissors;
          case Shape.paper:
            return Shape.rock;
          case Shape.scissors:
            return Shape.paper;
        }
      // draw
      case 'Y':
        return this;
      // win
      case 'Z':
        switch (this) {
          case Shape.rock:
            return Shape.paper;
          case Shape.paper:
            return Shape.scissors;
          case Shape.scissors:
            return Shape.rock;
        }
      default:
        throw Exception('Unknown shape: $s');
    }
  }

  static Shape from(String s) {
    switch (s) {
      case 'A':
        return Shape.rock;
      case 'B':
        return Shape.paper;
      case 'C':
        return Shape.scissors;
      default:
        throw Exception('Unknown shape: $s');
    }
  }
}
