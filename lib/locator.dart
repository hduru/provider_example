import 'package:get_it/get_it.dart';
import 'package:provider_example/viewmodels/todo_vm.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => TodoViewModel());
}
