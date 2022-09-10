import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());

  bool _isLight = false;
  bool get isLight=> _isLight;

  void changeTheme(){
    _isLight = !_isLight;
    emit(ThemeChange());
  }

}
