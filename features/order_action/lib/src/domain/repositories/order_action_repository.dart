import 'package:domain_shared/domain_shared.dart';

abstract interface class OrderActionRepository {
  Future<bool> launchTelegramOrder({required ValenkiProduct product, int? size});
  Future<bool> launchWhatsAppOrder({required ValenkiProduct product, int? size});
  Future<bool> launchPhoneCall();
  Future<bool> launchTelegramChannel();
}
