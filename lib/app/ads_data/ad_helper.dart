
import 'dart:io';

class AdHelper{
  static String get bannerIdUnitAd{
    //  await  CacheHelper.putData('finalPassword', '257t85s6dv${nameFinalKey.text.trim().characters.first}476t${nameFinalKey.text.trim().characters.last}po5');

    if(Platform.isAndroid){
      return "ca-app-pub-3940256099942544/6300978111";
    }else if(Platform.isIOS){
      return "ca-app-pub-3940256099942544/2934735716";
    }else{
      return '';

    //  throw UnsupportedError('Unsupported Platform');
    }
  }
  static String get interstitialIdUnitAd{
    if(Platform.isAndroid){
      return "ca-app-pub-3940256099942544/8691691433";
    }else if(Platform.isIOS){
      return "ca-app-pub-3940256099942544/5135589807";
    }else{
      return '';
     // throw UnsupportedError('Unsupported Platform');
    }
  }
}