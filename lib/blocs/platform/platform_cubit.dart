import 'package:bloc/bloc.dart';

class PlatformCubit extends Cubit<int> {
  PlatformCubit() : super(0);

  void setPage(int newPage) {
    emit(newPage);
  }
}
