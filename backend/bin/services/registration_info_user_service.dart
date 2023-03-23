import '../models/registration_info_user_model.dart';
import 'generic_service.dart';

class RegistrationInfoUserService
    implements GenericService<RegistrationInfoUserModel> {
  final RegistrationInfoUserModel _fakeRegistrationInfoUser =
      RegistrationInfoUserModel(
    'Lincoln',
    '88',
    '1.65',
    '19/06/2000',
  );

  @override
  bool delete(RegistrationInfoUserModel value) {
    _fakeRegistrationInfoUser.copyWith(dateOfBirth: null);
    return true;
  }

  @override
  RegistrationInfoUserModel findAll() {
    return _fakeRegistrationInfoUser;
  }

  @override
  RegistrationInfoUserModel findOne(int id) {
    return _fakeRegistrationInfoUser;
  }

  @override
  bool save(RegistrationInfoUserModel value) {
    _fakeRegistrationInfoUser.copyWith(
      name: value.name,
      height: value.height,
      width: value.width,
      dateOfBirth: value.dateOfBirth,
    );
    return true;
  }
}
