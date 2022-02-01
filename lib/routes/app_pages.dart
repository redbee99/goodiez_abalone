import 'package:get/get.dart';
import 'package:goodiez_abalone/modules/auth/auth.dart';
import 'package:goodiez_abalone/modules/buyAddress/buyAddress.dart';
import 'package:goodiez_abalone/modules/buyBid/buyBid.dart';
import 'package:goodiez_abalone/modules/confirmBuyAddress/confirmBuyAddress.dart';
import 'package:goodiez_abalone/modules/gameDetail/gameDetail.dart';
import 'package:goodiez_abalone/modules/home/home.dart';
import 'package:goodiez_abalone/modules/paymentMethod/paymentMethod.dart';
import 'package:goodiez_abalone/modules/placeBuyBid/placeBuyBid.dart';
import 'package:goodiez_abalone/modules/placeSellAsk/placeSellAsk.dart';
import 'package:goodiez_abalone/modules/search/search.dart';
import 'package:goodiez_abalone/modules/sellAsk/sellAsk.dart';
import 'package:goodiez_abalone/modules/sellNow/sellNow.dart';
import 'package:goodiez_abalone/modules/sellPayOut/sellPayOut.dart';
import 'package:goodiez_abalone/modules/shippingLabel/shippingLabel.dart';
import 'package:goodiez_abalone/modules/splash/splash.dart';
import 'package:goodiez_abalone/modules/transitItemDetail/transitItemDetail.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;
  
  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.AUTH,
      page: () => AuthScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.GAMEDETAIL,
      page: () => GameDetailScreen(),
      binding: GameDetailBinding(),
    ),
    GetPage(
      name: Routes.BUYADDRESS,
      page: () => BuyAddressScreen(),
      binding: BuyAddressBinding(),
    ),
    GetPage(
      name: Routes.BUY_BID,
      page: () => BuyBidScreen(),
      binding: BuyBidBinding(),
    ),
    GetPage(
      name: Routes.PLACE_BUY_BID,
      page: () => PlaceBuyBidScreen(),
      binding: PlaceBuyBidBinding(),
    ),
    GetPage(
      name: Routes.CONFIRMBUYADDRESS,
      page: () => ConfirmBuyAddressScreen(),
      binding: ConfirmBuyAddressBinding(),
    ),
    GetPage(
      name: Routes.PAYMENT_METHOD,
      page: () => PaymentMethodScreen(),
      binding: PaymentMethodBinding(),
    ),
    GetPage(
      name: Routes.SEARCH,
      page: () => SearchScreen(),
      binding: SearchBinding(),
    ),
    GetPage(
      name: Routes.TRANSIT_ITEM,
      page: () => TransitItemDetailScreen(),
      binding: TransitItemDetailBinding(),
    ),
    GetPage(
      name: Routes.SHIPPING_LABEL,
      page: () => ShippingLabelScreen(),
      binding: ShippingLabelBinding(),
    ),
    GetPage(
      name: Routes.SELL_ASK,
      page: () => SellAskScreen(),
      binding: SellAskBinding(),
    ),
    GetPage(
      name: Routes.PLACE_SELL_ASK,
      page: () => placeSellAskScreen(),
      binding: placeSellAskBinding(),
    ),
    GetPage(
      name: Routes.SELL_PAY_OUT,
      page: () => SellPayOutScreen(),
      binding: SellPayOutBinding(),
    ),
    GetPage(
      name: Routes.SELL_NOW,
      page: () => SellNowScreen(),
      binding: SellNowBinding(),
    ),
  ];
}