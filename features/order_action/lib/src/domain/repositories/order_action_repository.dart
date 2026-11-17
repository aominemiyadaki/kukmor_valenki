import 'package:domain_shared/domain_shared.dart';

abstract interface class OrderActionRepository {
  Future<bool> launchTelegramOrder({required ValenkiProduct product, required String message});
  Future<bool> launchWhatsAppOrder({required ValenkiProduct product, required String message});
  Future<bool> launchPhoneCall();
  Future<bool> launchTelegramChannel();
}
