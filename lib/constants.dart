import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

// Just for demo
const productDemoImg1 = "https://firebasestorage.googleapis.com/v0/b/upside-publications.firebasestorage.app/o/images%2Fbook_3.png?alt=media&token=788da401-d8bb-4668-ab0f-f89feb1ca291";
const productDemoImg2 = "https://firebasestorage.googleapis.com/v0/b/upside-publications.firebasestorage.app/o/images%2Fbook_1.png?alt=media&token=fee46fdb-a355-4bdf-ad6f-104ebe086229";
const productDemoImg3 = "https://firebasestorage.googleapis.com/v0/b/upside-publications.firebasestorage.app/o/images%2Fbook_2.png?alt=media&token=b4267a88-2e88-436e-bb81-e03e1f664991";
const productDemoImg4 = "https://firebasestorage.googleapis.com/v0/b/upside-publications.firebasestorage.app/o/images%2Fbook_4.png?alt=media&token=e46c44f1-8750-43e7-8bfe-dfad5f3816c1";
const productDemoImg5 = "https://firebasestorage.googleapis.com/v0/b/upside-publications.firebasestorage.app/o/images%2Fbook_5.png?alt=media&token=38023246-c73b-4881-92f1-959209210dca";
const productDemoImg6 = "https://firebasestorage.googleapis.com/v0/b/upside-publications.firebasestorage.app/o/images%2Fbook_3.png?alt=media&token=788da401-d8bb-4668-ab0f-f89feb1ca291";

// End For demo

const grandisExtendedFont = "Grandis Extended";

// On color 80, 60.... those means opacity

const Color primaryColor = Color(0xFF7B61FF);

const MaterialColor primaryMaterialColor =
    MaterialColor(0xFF9581FF, <int, Color>{
  50: Color(0xFFEFECFF),
  100: Color(0xFFD7D0FF),
  200: Color(0xFFBDB0FF),
  300: Color(0xFFA390FF),
  400: Color(0xFF8F79FF),
  500: Color(0xFF7B61FF),
  600: Color(0xFF7359FF),
  700: Color(0xFF684FFF),
  800: Color(0xFF5E45FF),
  900: Color(0xFF6C56DD),
});

const Color blackColor = Color(0xFF16161E);
const Color blackColor80 = Color(0xFF45454B);
const Color blackColor60 = Color(0xFF737378);
const Color blackColor40 = Color(0xFFA2A2A5);
const Color blackColor20 = Color(0xFFD0D0D2);
const Color blackColor10 = Color(0xFFE8E8E9);
const Color blackColor5 = Color(0xFFF3F3F4);

const Color whiteColor = Colors.white;
const Color whileColor80 = Color(0xFFCCCCCC);
const Color whileColor60 = Color(0xFF999999);
const Color whileColor40 = Color(0xFF666666);
const Color whileColor20 = Color(0xFF333333);
const Color whileColor10 = Color(0xFF191919);
const Color whileColor5 = Color(0xFF0D0D0D);

const Color greyColor = Color(0xFFB8B5C3);
const Color lightGreyColor = Color(0xFFF8F8F9);
const Color darkGreyColor = Color(0xFF1C1C25);
// const Color greyColor80 = Color(0xFFC6C4CF);
// const Color greyColor60 = Color(0xFFD4D3DB);
// const Color greyColor40 = Color(0xFFE3E1E7);
// const Color greyColor20 = Color(0xFFF1F0F3);
// const Color greyColor10 = Color(0xFFF8F8F9);
// const Color greyColor5 = Color(0xFFFBFBFC);

const Color purpleColor = Color(0xFF7B61FF);
const Color successColor = Color(0xFF2ED573);
const Color warningColor = Color(0xFFFFBE21);
const Color errorColor = Color(0xFFEA5B5B);

const double defaultPadding = 16.0;
const double defaultBorderRadious = 12.0;
const Duration defaultDuration = Duration(milliseconds: 300);

final passwordValidator = MultiValidator([
  RequiredValidator(errorText: 'Password is required'),
  MinLengthValidator(8, errorText: 'password must be at least 8 digits long'),
  PatternValidator(r'(?=.*?[#?!@$%^&*-])',
      errorText: 'passwords must have at least one special character')
]);

final emaildValidator = MultiValidator([
  RequiredValidator(errorText: 'Email is required'),
  EmailValidator(errorText: "Enter a valid email address"),
]);

const pasNotMatchErrorText = "passwords do not match";

const imagePackageName =  "shop";

const productCardBlockHeight = 420.0;
