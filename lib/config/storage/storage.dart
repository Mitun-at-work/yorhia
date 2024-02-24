import 'package:dartz/dartz.dart';

abstract class RunTimeStorageManager {
  // Write Data to Runtime
  Future<void> cacheDataRuntime(
      String dictKey, Map<String, dynamic> storeValue);

  // Fetch Data from RunTime
  Future<Either<Map<String, dynamic>, void>> fetchDataRuntime(String dictKey);
}
