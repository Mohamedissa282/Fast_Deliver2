// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Suivant`
  String get title {
    return Intl.message(
      'Suivant',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Livraison Express à Votre Porte!`
  String get hello {
    return Intl.message(
      'Livraison Express à Votre Porte!',
      name: 'hello',
      desc: '',
      args: [],
    );
  }

  /// `Avec notre application, suivez vos livraisons en temps réel et recevez vos colis en toute sécurité. Essayez-la dès aujourd’hui !`
  String get name {
    return Intl.message(
      'Avec notre application, suivez vos livraisons en temps réel et recevez vos colis en toute sécurité. Essayez-la dès aujourd’hui !',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Français`
  String get title1 {
    return Intl.message(
      'Français',
      name: 'title1',
      desc: '',
      args: [],
    );
  }

  /// `Arabe`
  String get title2 {
    return Intl.message(
      'Arabe',
      name: 'title2',
      desc: '',
      args: [],
    );
  }

  /// `Entrez votre numéro de téléphone!`
  String get title3 {
    return Intl.message(
      'Entrez votre numéro de téléphone!',
      name: 'title3',
      desc: '',
      args: [],
    );
  }

  /// `Le numéro de téléphone est obligatoire.`
  String get title4 {
    return Intl.message(
      'Le numéro de téléphone est obligatoire.',
      name: 'title4',
      desc: '',
      args: [],
    );
  }

  /// `Etes-vous sûr du numéro ?`
  String get title5 {
    return Intl.message(
      'Etes-vous sûr du numéro ?',
      name: 'title5',
      desc: '',
      args: [],
    );
  }

  /// `Oui`
  String get title6 {
    return Intl.message(
      'Oui',
      name: 'title6',
      desc: '',
      args: [],
    );
  }

  /// `Non`
  String get title7 {
    return Intl.message(
      'Non',
      name: 'title7',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get title8 {
    return Intl.message(
      'Ok',
      name: 'title8',
      desc: '',
      args: [],
    );
  }

  /// `رقم الهاتف غير صالح`
  String get title9 {
    return Intl.message(
      'رقم الهاتف غير صالح',
      name: 'title9',
      desc: '',
      args: [],
    );
  }

  /// `Numéro de ...`
  String get title10 {
    return Intl.message(
      'Numéro de ...',
      name: 'title10',
      desc: '',
      args: [],
    );
  }

  /// `Entrez le code envoyé à votre numéro de téléphone.`
  String get title11 {
    return Intl.message(
      'Entrez le code envoyé à votre numéro de téléphone.',
      name: 'title11',
      desc: '',
      args: [],
    );
  }

  /// `Le mot de passe est incorrect`
  String get title12 {
    return Intl.message(
      'Le mot de passe est incorrect',
      name: 'title12',
      desc: '',
      args: [],
    );
  }

  /// `Verifier`
  String get title13 {
    return Intl.message(
      'Verifier',
      name: 'title13',
      desc: '',
      args: [],
    );
  }

  /// `Verifier ton numéro`
  String get title14 {
    return Intl.message(
      'Verifier ton numéro',
      name: 'title14',
      desc: '',
      args: [],
    );
  }

  /// `Homme`
  String get title15 {
    return Intl.message(
      'Homme',
      name: 'title15',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get title16 {
    return Intl.message(
      'About',
      name: 'title16',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get title17 {
    return Intl.message(
      '',
      name: 'title17',
      desc: '',
      args: [],
    );
  }

  /// `S'abonner`
  String get title18 {
    return Intl.message(
      'S\'abonner',
      name: 'title18',
      desc: '',
      args: [],
    );
  }

  /// `Se désabonner`
  String get title19 {
    return Intl.message(
      'Se désabonner',
      name: 'title19',
      desc: '',
      args: [],
    );
  }

  /// `Distance`
  String get title20 {
    return Intl.message(
      'Distance',
      name: 'title20',
      desc: '',
      args: [],
    );
  }

  /// `Le prix est`
  String get title21 {
    return Intl.message(
      'Le prix est',
      name: 'title21',
      desc: '',
      args: [],
    );
  }

  /// `Km`
  String get title22 {
    return Intl.message(
      'Km',
      name: 'title22',
      desc: '',
      args: [],
    );
  }

  /// `MRU`
  String get title23 {
    return Intl.message(
      'MRU',
      name: 'title23',
      desc: '',
      args: [],
    );
  }

  /// `FAST`
  String get title24 {
    return Intl.message(
      'FAST',
      name: 'title24',
      desc: '',
      args: [],
    );
  }

  /// `DELIVERY`
  String get title25 {
    return Intl.message(
      'DELIVERY',
      name: 'title25',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
      Locale.fromSubtags(languageCode: 'fr'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
