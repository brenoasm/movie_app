import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:movie_app/domain/usecases/example_usecase.dart';
import 'package:movie_app/shared/disposeable.dart';

part 'home_controller.g.dart';

@injectable
class HomeController = _HomeController with _$HomeController;

abstract class _HomeController with Store implements Disposeable {
  final ExampleUsageUsecase _exampleUsageUsecase;

  _HomeController(this._exampleUsageUsecase);

  @observable
  ObservableFuture<String> someTextObservable;

  bool get someTextHasError => someTextObservable?.error != null ?? false;

  @computed
  FutureStatus get someTextStatus => someTextObservable?.status;

  @action
  Future<void> onPressed() async {
    someTextObservable = _exampleUsageUsecase().asObservable();
  }

  @override
  void dispose() {}
}
