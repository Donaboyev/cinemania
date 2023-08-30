class MoviesResponse {
  MoviesResponse({int? page, List<Movie>? results}) {
    _page = page;
    _results = results;
  }

  MoviesResponse.fromJson(dynamic json) {
    _page = json['page'];
    if (json['results'] != null) {
      _results = [];
      json['results'].forEach((v) {
        _results?.add(Movie.fromJson(v));
      });
    }
  }

  int? _page;
  List<Movie>? _results;

  MoviesResponse copyWith({int? page, List<Movie>? results}) =>
      MoviesResponse(page: page ?? _page, results: results ?? _results);

  int? get page => _page;

  List<Movie>? get results => _results;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['page'] = _page;
    if (_results != null) {
      map['results'] = _results?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Movie {
  Movie({
    String? backdropPath,
    List<int>? genreIds,
    int? id,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    num? popularity,
    String? posterPath,
    String? releaseDate,
    String? title,
    bool? video,
    num? voteAverage,
    int? voteCount,
  }) {
    _backdropPath = backdropPath;
    _genreIds = genreIds;
    _id = id;
    _originalLanguage = originalLanguage;
    _originalTitle = originalTitle;
    _overview = overview;
    _popularity = popularity;
    _posterPath = posterPath;
    _releaseDate = releaseDate;
    _title = title;
    _video = video;
    _voteAverage = voteAverage;
    _voteCount = voteCount;
  }

  Movie.fromJson(dynamic json) {
    _backdropPath = json['backdrop_path'];
    _genreIds = json['genre_ids'] != null ? json['genre_ids'].cast<int>() : [];
    _id = json['id'];
    _originalLanguage = json['original_language'];
    _originalTitle = json['original_title'];
    _overview = json['overview'];
    _popularity = json['popularity'];
    _posterPath = json['poster_path'];
    _releaseDate = json['release_date'];
    _title = json['title'];
    _video = json['video'];
    _voteAverage = json['vote_average'];
    _voteCount = json['vote_count'];
  }

  String? _backdropPath;
  List<int>? _genreIds;
  int? _id;
  String? _originalLanguage;
  String? _originalTitle;
  String? _overview;
  num? _popularity;
  String? _posterPath;
  String? _releaseDate;
  String? _title;
  bool? _video;
  num? _voteAverage;
  int? _voteCount;

  Movie copyWith({
    String? backdropPath,
    List<int>? genreIds,
    int? id,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    num? popularity,
    String? posterPath,
    String? releaseDate,
    String? title,
    bool? video,
    num? voteAverage,
    int? voteCount,
  }) =>
      Movie(
        backdropPath: backdropPath ?? _backdropPath,
        genreIds: genreIds ?? _genreIds,
        id: id ?? _id,
        originalLanguage: originalLanguage ?? _originalLanguage,
        originalTitle: originalTitle ?? _originalTitle,
        overview: overview ?? _overview,
        popularity: popularity ?? _popularity,
        posterPath: posterPath ?? _posterPath,
        releaseDate: releaseDate ?? _releaseDate,
        title: title ?? _title,
        video: video ?? _video,
        voteAverage: voteAverage ?? _voteAverage,
        voteCount: voteCount ?? _voteCount,
      );

  String? get backdropPath => _backdropPath;

  List<int>? get genreIds => _genreIds;

  int? get id => _id;

  String? get originalLanguage => _originalLanguage;

  String? get originalTitle => _originalTitle;

  String? get overview => _overview;

  num? get popularity => _popularity;

  String? get posterPath => _posterPath;

  String? get releaseDate => _releaseDate;

  String? get title => _title;

  bool? get video => _video;

  num? get voteAverage => _voteAverage;

  int? get voteCount => _voteCount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['backdrop_path'] = _backdropPath;
    map['genre_ids'] = _genreIds;
    map['id'] = _id;
    map['original_language'] = _originalLanguage;
    map['original_title'] = _originalTitle;
    map['overview'] = _overview;
    map['popularity'] = _popularity;
    map['poster_path'] = _posterPath;
    map['release_date'] = _releaseDate;
    map['title'] = _title;
    map['video'] = _video;
    map['vote_average'] = _voteAverage;
    map['vote_count'] = _voteCount;
    return map;
  }
}
