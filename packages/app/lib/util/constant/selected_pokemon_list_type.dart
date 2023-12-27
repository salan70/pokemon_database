import 'package:flutter/material.dart';

enum SelectedPokemonListType {
  red,
  blue;

  Color get color {
    switch (this) {
      case SelectedPokemonListType.red:
        return Colors.red;
      case SelectedPokemonListType.blue:
        return Colors.blue;
    }
  }

  String get label {
    switch (this) {
      case SelectedPokemonListType.red:
        return 'red';
      case SelectedPokemonListType.blue:
        return 'blue';
    }
  }
}
