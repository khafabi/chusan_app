part of 'course_cubit.dart';

abstract class CourseState extends Equatable {
  const CourseState();

  @override
  List<Object> get props => [];
}

class CourseInitial extends CourseState {}

class CourseLoading extends CourseState {}

class CourseSuccess extends CourseState {
  final List<Merchant> levels;

  const CourseSuccess(this.levels);

  @override
  List<Object> get props => [levels];
}

class CourseFailed extends CourseState {
  final String error;

  const CourseFailed(this.error);

  @override
  List<Object> get props => [error];
}
