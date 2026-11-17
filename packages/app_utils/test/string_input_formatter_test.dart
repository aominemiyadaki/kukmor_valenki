import 'package:app_utils/app_utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('StringInputFormatter', () {
    test('withoutSpace removes non-digit characters', () {
      expect('+7 (999) 123 45 67'.withoutSpace(), '79991234567');
      expect('abc 123 xyz'.withoutSpace(), '123');
    });

    test('trimFirstChar trims only first character', () {
      expect(''.trimFirstChar(), '');
      expect('7'.trimFirstChar(), '');
      expect('+7999'.trimFirstChar(), '7999');
    });

    test('toDigitString extracts digits', () {
      expect('+7-999-000-11-22'.toDigitString(), '79990001122');
    });

    test('formatPhoneNumber replaces leading 7 with 8 and leaves digits', () {
      expect('+7 (999) 123-45-67'.formatPhoneNumber(), '89991234567');
      expect('79991234567'.formatPhoneNumber(), '89991234567');
      expect('89991234567'.formatPhoneNumber(), '89991234567');
    });

    test('replacePatterns replaces multiple tokens using pattern', () {
      const template =
          'Здравствуйте, <name>! Ваша бронь номер <number> подтверждена на <date>.';
      final result = template.replacePatterns(
        keys: ['name', 'number', 'date'],
        replaceFunction: (key) {
          switch (key) {
            case 'name':
              return 'Алексей';
            case 'number':
              return '4812';
            case 'date':
              return '15.09.2026';
            default:
              return '';
          }
        },
      );

      expect(
        result,
        'Здравствуйте, Алексей! Ваша бронь номер 4812 подтверждена на 15.09.2026.',
      );
    });

    test('replacePatterns works with custom pattern delimiters', () {
      const template = 'Hello {user}, code: {code}';
      final result = template.replacePatterns(
        keys: ['user', 'code'],
        beginPattern: '{',
        endPattern: '}',
        replaceFunction: (key) => key == 'user' ? 'Ivan' : '9999',
      );

      expect(result, 'Hello Ivan, code: 9999');
    });
  });

  group('UiLocalizationKeys', () {
    test('constants are defined and accessible', () {
      expect(UiLocalizationKeys.back, 'back');
      expect(UiLocalizationKeys.videoSavedSuccess, 'video_saved_success');
      expect(UiLocalizationKeys.videoDownloadFailed, 'video_download_failed');
      expect(UiLocalizationKeys.networkConnected, 'network_connected');
      expect(UiLocalizationKeys.networkDisconnected, 'network_disconnected');
      expect(UiLocalizationKeys.networkRestored, 'network_restored');
      expect(UiLocalizationKeys.pageLoadFailed, 'page_load_failed');
    });
  });
}
