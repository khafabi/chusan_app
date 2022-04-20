import 'package:bloc/bloc.dart';
import 'package:chusan_app/models/barrel_model.dart';
import 'package:equatable/equatable.dart';

part 'course_state.dart';

class ContentCubit extends Cubit<CourseState> {
  ContentCubit() : super(CourseInitial());

  void fetchCourses() {
    try {
      emit(CourseLoading());

      // List<MerchantModel>? merchants = ContentService().fetchContents();
      List<Merchant>? merchants = [];

      emit(CourseSuccess(merchants));
    } catch (error) {
      emit(CourseFailed(error.toString()));
    }
  }
}
