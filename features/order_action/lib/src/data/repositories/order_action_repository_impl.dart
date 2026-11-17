import 'package:domain_shared/domain_shared.dart';
import 'package:order_action/src/domain/repositories/order_action_repository.dart';
import 'package:url_launcher/url_launcher.dart';

final class OrderActionRepositoryImpl implements OrderActionRepository {
  static const String telegramUsername = 'kukmor_manager';
  static const String whatsAppPhone = '+79872900000';
  static const String directPhone = '+78005553535';
  static const String telegramChannelUrl = 'https://t.me/kukmor_valenki';

  @override
  Future<bool> launchTelegramOrder({required ValenkiProduct product, int? size}) async {
    final urlStr = product.buildTelegramOrderUrl(username: telegramUsername, selectedSize: size);
    final uri = Uri.parse(urlStr);
    return launchUrl(uri, mode: LaunchMode.externalApplication);
  }

  @override
  Future<bool> launchWhatsAppOrder({required ValenkiProduct product, int? size}) async {
    final urlStr = product.buildWhatsAppOrderUrl(phone: whatsAppPhone, selectedSize: size);
    final uri = Uri.parse(urlStr);
    return launchUrl(uri, mode: LaunchMode.externalApplication);
  }

  @override
  Future<bool> launchPhoneCall() async {
    final uri = Uri.parse('tel:$directPhone');
    return launchUrl(uri);
  }

  @override
  Future<bool> launchTelegramChannel() async {
    final uri = Uri.parse(telegramChannelUrl);
    return launchUrl(uri, mode: LaunchMode.externalApplication);
  }
}
