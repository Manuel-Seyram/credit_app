// ignore_for_file: unnecessary_getters_setters, non_constant_identifier_names

class ApiResponse<T> {
  late T _data;
  late Object _apiError;

  T get data => _data;
  set data(T data) => _data = data;

  Object get apiError => _apiError;
  set apiError(Object error) => _apiError = error;
}
