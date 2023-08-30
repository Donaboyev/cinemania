import '../remote/remote_source.dart';

class HomeRepository {
  final RemoteSource remoteSource;

  const HomeRepository({required this.remoteSource});

  Future<dynamic> getUpcomingMovies() async {
    final response = await remoteSource.getUpcomingMovies();
    if (response.data != null) {
      return response.data;
    }
    return 'Error occurred';
  }
}
