
import 'package:flutter/material.dart';

class Environment {
  final String name;
  final Color color;
  final BannerLocation location;
  final Map<String, dynamic> variables;

  Environment({
    required this.name,
    required this.color,
    required this.location,
    required this.variables,
  });

  factory Environment.dev() {
    return Environment(
      name: "DEV",
      color: Colors.red,
      location: BannerLocation.topStart,
      variables: {
        "base": "http://localhost:8000/api/v1",
      },
    );
  }

  factory Environment.prod() {
    return Environment(
      name: "PROD",
      color: Colors.red,
      location: BannerLocation.topStart,
      variables: {
        "base": "https://example.com/api/v1",
      },
    );
  }

  Future<void> configure() async {
    // Configuration logic can be added here if needed
  }
}
