// =============================================================
// START: AD MANAGER
// =============================================================

import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:flutter/material.dart';

class AdManager {
  // =============================================================
  // GOOGLE TEST INTERSTITIAL
  // =============================================================

  static const String interstitialAdUnitId =
      'ca-app-pub-3912279805002146/3052600944';

  static InterstitialAd? _interstitialAd;

  // =============================================================
// AD VISIBILITY STATE
// =============================================================

  static bool isAdShowing = false;

  // =============================================================
  // Load Interstitial Ad
  // =============================================================

  static void loadInterstitialAd() {
    InterstitialAd.load(
      adUnitId: interstitialAdUnitId,
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          _interstitialAd = ad;

        },
        onAdFailedToLoad: (error) {
          _interstitialAd = null;

        },
      ),
    );
  }

  // =============================================================
  // Show Interstitial Ad
  // =============================================================

  static void showInterstitialAd({
    VoidCallback? onAdClosed,
  }) {
    if (_interstitialAd != null) {


      _interstitialAd!.fullScreenContentCallback =
          FullScreenContentCallback(
            onAdDismissedFullScreenContent: (ad) {
              isAdShowing = false;

              ad.dispose();

              loadInterstitialAd();

              onAdClosed?.call();
            },

            onAdFailedToShowFullScreenContent: (ad, error) {
              ad.dispose();

              isAdShowing = false;

              _interstitialAd = null;

              loadInterstitialAd();

              onAdClosed?.call();
            },
          );
      isAdShowing = true;
      _interstitialAd!.show();

    } else {

    }
  }
}