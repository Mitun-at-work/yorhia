import 'package:dartz/dartz.dart';

import 'storage.dart';

class RunTimeStorageManagerImpl implements RunTimeStorageManager {
  // Data Holder
  RunTimeStorageManagerImpl() : storageCache = <String, dynamic>{};

  final Map<String, dynamic> storageCache;
  // Initialiser

  @override
  Future<void> cacheDataRuntime(String dictKey, dynamic storeValue) async {
    storageCache[dictKey] = storeValue;
    return;
  }

  @override
  Future<Either<dynamic, void>> fetchDataRuntime(String dictKey) async {
    if (storageCache.containsKey(dictKey)) {
      final requestedData = storageCache[dictKey];
      return Left(requestedData);
    }
    return const Right(null);
  }
}
