import 'package:bookly/Core/errors/Failure.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> featchBestSellerBooks();
  Future<Either<Failure, List<BookModel>>> featchFeaturedBooks();
}
