import 'package:dartz/dartz.dart';

abstract class RunTimeStorageManager {
  // Write Data to Runtime
  Future<void> cacheDataRuntime(String dictKey, dynamic storeValue);

  // Fetch Data from RunTime
  Future<Either<dynamic, void>> fetchDataRuntime(String dictKey);
}
