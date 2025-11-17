import 'package:bookly/Core/errors/Failure.dart';
import 'package:bookly/Core/utils/api_service.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> featchBestSellerBooks() async {
    try {
  var data = await apiService.get(endPoint: 'volumes?q=computer science');
  List<BookModel> books = [];
  for (var item in data['items']) {
    books.add(BookModel.fromJson(item));
  }
  return right(books);
} on Exception catch (e) {
  return left(ServerFailure());
}
  }

  @override
  Future<Either<Failure, List<BookModel>>> featchFeaturedBooks() {
    // TODO: implement featchFeaturedBooks
    throw UnimplementedError();
  }
}
