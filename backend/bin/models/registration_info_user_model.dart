// ignore_for_file: public_member_api_docs, sort_constructors_first
class RegistrationInfoUserModel {
  final String name;
  final String width;
  final String height;
  final String dateOfBirth;

  const RegistrationInfoUserModel(
    this.name,
    this.width,
    this.height,
    this.dateOfBirth,
  );

  @override
  String toString() {
    return 'RegistrationInfoUserModel(name: $name, width: $width, height: $height, dateOfBirth: $dateOfBirth)';
  }

  RegistrationInfoUserModel copyWith({
    String? name,
    String? width,
    String? height,
    String? dateOfBirth,
  }) {
    return RegistrationInfoUserModel(
      name ?? this.name,
      width ?? this.width,
      height ?? this.height,
      dateOfBirth ?? this.dateOfBirth,
    );
  }
}
