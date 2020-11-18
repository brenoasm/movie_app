import 'package:injectable/injectable.dart';
import 'package:movie_app/data/repositories_interfaces/example_repository_interface.dart';

@Singleton(as: IExampleRepository)
class ExampleRepository implements IExampleRepository {
  @override
  Future<String> callme() async {
    return 'There is ${DateTime.now().toIso8601String()}';
  }
}
