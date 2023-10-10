import 'dart:io';

abstract class UseCase {
  Future<T> safe<T>(Future<T> Function() fn) async {
    try {
      return await fn();
    } on SocketException catch (e) {
      print(e.toString());
      rethrow;
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }
}
