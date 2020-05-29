import 'package:json_annotation/json_annotation.dart';

part 'network_movie.g.dart';

@JsonSerializable()
class NetworkMovie {
  @JsonKey(name: 'Title')
  final String title; // Leon
  @JsonKey(name: 'Year')
  final String year; // 2018
  @JsonKey(name: 'Runtime')
  final String runtime; // 100 min
  @JsonKey(name: 'Genre')
  final String genre; // Drama
  @JsonKey(name: 'Director')
  final String director; // Renpei Tsukamoto
  @JsonKey(name: 'Writer')
  final String writer;
  @JsonKey(name: 'Actors')
  final String actors;
  @JsonKey(name: 'Plot')
  final String plot;
  @JsonKey(name: 'Country')
  final String country; // Japan
  @JsonKey(name: 'Poster')
  final String poster;
  @JsonKey(name: 'imdbRating')
  final String imdbRating;

  NetworkMovie(
      this.title,
      this.year,
      this.runtime,
      this.genre,
      this.director,
      this.writer,
      this.actors,
      this.plot,
      this.country,
      this.poster,
      this.imdbRating); // 6.4

  factory NetworkMovie.fromJson(final Map<String, dynamic> json) {
    return _$NetworkMovieFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NetworkMovieToJson(this);
}
