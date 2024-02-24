import 'package:dartz/dartz.dart';

import 'storage.dart';

class RunTimeStorageManagerImpl implements RunTimeStorageManager {
  // Data Holder
  final Map<String, Map<String, dynamic>> storageCache;

  // Initialiser
  RunTimeStorageManagerImpl({
    this.storageCache = const {},
  });

  @override
  Future<void> cacheDataRuntime(
      String dictKey, Map<String, dynamic> storeValue) async {
    storageCache[dictKey] = storeValue;
    return;
  }

  @override
  Future<Either<Map<String, dynamic>, void>> fetchDataRuntime(
      String dictKey) async {
    if (storageCache.containsKey(dictKey)) {
      final Map<String, dynamic> requestedData =
          storageCache[dictKey] as Map<String, dynamic>;
      return Left(requestedData);
    }
    return const Right(null);
  }
}
