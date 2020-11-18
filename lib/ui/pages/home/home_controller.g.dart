// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeController, Store {
  Computed<FutureStatus> _$someTextStatusComputed;

  @override
  FutureStatus get someTextStatus => (_$someTextStatusComputed ??=
          Computed<FutureStatus>(() => super.someTextStatus,
              name: '_HomeController.someTextStatus'))
      .value;

  final _$someTextObservableAtom =
      Atom(name: '_HomeController.someTextObservable');

  @override
  ObservableFuture<String> get someTextObservable {
    _$someTextObservableAtom.reportRead();
    return super.someTextObservable;
  }

  @override
  set someTextObservable(ObservableFuture<String> value) {
    _$someTextObservableAtom.reportWrite(value, super.someTextObservable, () {
      super.someTextObservable = value;
    });
  }

  final _$onPressedAsyncAction = AsyncAction('_HomeController.onPressed');

  @override
  Future<void> onPressed() {
    return _$onPressedAsyncAction.run(() => super.onPressed());
  }

  @override
  String toString() {
    return '''
someTextObservable: ${someTextObservable},
someTextStatus: ${someTextStatus}
    ''';
  }
}
