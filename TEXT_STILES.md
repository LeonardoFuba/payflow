# PayFlow

# Estilos dos Textos

| Nome | Font | Size | Weight | Color
|--|--|--|--|--|
|titleHome | ![title](https://d144mzi0q5mijx.cloudfront.net/img/L/E/Lexend-Deca-Regular.png ) |32px|600| heading
| titleRegular | ![title](https://d144mzi0q5mijx.cloudfront.net/img/L/E/Lexend-Deca-Regular.png ) |20px |400 | background|
| titleBold | ![title](https://d144mzi0q5mijx.cloudfront.net/img/L/E/Lexend-Deca-Regular.png ) |20px |600 |heading ou background|
| titleListTile | ![title](https://d144mzi0q5mijx.cloudfront.net/img/L/E/Lexend-Deca-Regular.png ) |17px |600 | heading|
| trailingRegular| ![title](https://d144mzi0q5mijx.cloudfront.net/img/L/E/Lexend-Deca-Regular.png ) |16px |400 | heading|
| trailingBold | ![title](https://d144mzi0q5mijx.cloudfront.net/img/L/E/Lexend-Deca-Regular.png ) |16px |600 | heading|
| button | ![title](https://d144mzi0q5mijx.cloudfront.net/img/I/N/Inter.png ) |15px|400| primary, heading, secondary ou background
| buttonBold | ![title](https://d144mzi0q5mijx.cloudfront.net/img/I/N/Inter.png ) |15px|700| heading
| caption| ![title](https://d144mzi0q5mijx.cloudfront.net/img/L/E/Lexend-Deca-Regular.png ) |13px |400 | background, shape ou body|
| captionBold| ![title](https://d144mzi0q5mijx.cloudfront.net/img/L/E/Lexend-Deca-Regular.png ) |13px |600 | background, shape ou body|

## Instalação
Para realizar o processo de instalação precisamos acessar o pub.dev para pegar a versão mais atual do [GoogleFonts](https://pub.dev/packages/google_fonts).

```yaml
dependencies:
  google_fonts: ^2.1.0
```

Então nesse NLW iremos utilizar a versão citada acima.

Para adicionar esse package precisamos acessar o pubspec.yaml na raíz do projeto e colocar o google_fonts.

Ficando dessa forma:

```yaml
...
dependencies:
  flutter:
    sdk: flutter


  # The following adds the Cupertino Icons font to your application.
  # Use with the CupertinoIcons class for iOS style icons.
  cupertino_icons: ^1.0.2
  google_fonts: ^2.1.0
...
```

Agora temos tudo no jeito para começar a criar nosso código.

Agora com as configurações de package no jeito, você precisar criar o arquivo __app_text_styles.dart__  no seu projeto seguindo o esquema de diretório abaixo:

```
/lib
	/shared
		/themes
			app_text_styles.dart
```
**Obs:**
- Esse arquivo precisa ser criado dentro de /lib/shared/themes/appcolors.dart
-  Importante lembrar de colocar o import abaixo no início do arquivo para encontrar a classe __GoogleFonts__

```dart
import 'package:google_fonts/google_fonts.dart';
```
Arquivo completo

```dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payflow/shared/themes/app_colors.dart';

class AppTextStyles {
  static final titleHome = GoogleFonts.lexendDeca(
    fontSize: 32,
    fontWeight: FontWeight.w600,
    color: AppColors.heading,
  );
  static final titleRegular = GoogleFonts.lexendDeca(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: AppColors.heading,
  );
  static final titleBoldHeading = GoogleFonts.lexendDeca(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.heading,
  );
  static final titleBoldBackground = GoogleFonts.lexendDeca(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.background,
  );
  static final titleListTile = GoogleFonts.lexendDeca(
    fontSize: 17,
    fontWeight: FontWeight.w600,
    color: AppColors.heading,
  );
  static final trailingRegular = GoogleFonts.lexendDeca(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.heading,
  );
  static final trailingBold = GoogleFonts.lexendDeca(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.heading,
  );
  static final buttonPrimary = GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: AppColors.primary,
  );
  static final buttonHeading = GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: AppColors.heading,
  );
  static final buttonGray = GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: AppColors.secondary,
  );
  static final buttonBackground = GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: AppColors.background,
  );
  static final buttonBoldPrimary = GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: AppColors.primary,
  );
  static final buttonBoldHeading = GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: AppColors.heading,
  );
  static final buttonBoldGray = GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: AppColors.secondary,
  );
  static final buttonBoldBackground = GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: AppColors.background,
  );
  static final captionBackground = GoogleFonts.lexendDeca(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: AppColors.background,
  );
  static final captionShape = GoogleFonts.lexendDeca(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: AppColors.shape,
  );
  static final captionBody = GoogleFonts.lexendDeca(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: AppColors.body,
  );
  static final captionBoldBackground = GoogleFonts.lexendDeca(
    fontSize: 13,
    fontWeight: FontWeight.w600,
    color: AppColors.background,
  );
  static final captionBoldShape = GoogleFonts.lexendDeca(
    fontSize: 13,
    fontWeight: FontWeight.w600,
    color: AppColors.shape,
  );
  static final captionBoldBody = GoogleFonts.lexendDeca(
    fontSize: 13,
    fontWeight: FontWeight.w600,
    color: AppColors.body,
  );
}
```

## Utilizando o AppTextStyle

```dart
final style = AppTextStyles.titleHome;
```
