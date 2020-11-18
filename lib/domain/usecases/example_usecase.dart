import 'package:injectable/injectable.dart';
import 'package:movie_app/data/repositories_interfaces/example_repository_interface.dart';
import 'package:movie_app/shared/usecase.dart';

mixin ExampleUsageUsecase implements Usecase {
  Future<String> call();
}

@Injectable(as: ExampleUsageUsecase)
class ExampleUsage implements ExampleUsageUsecase {
  final IExampleRepository _exampleRepository;

  ExampleUsage(this._exampleRepository);

  Future<String> call() async {
    return _exampleRepository.callme();
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}
