//
//  ContentView.swift
//  AdMob-Interstitial-Demo
//
//  Created by TAISHIN MIYAMOTO on 2022/05/10.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var interstitial = Interstitial()
    var body: some View {
        Button(action: {
            interstitial.ShowInterstitial()
        }) {
            Text(interstitial.interstitialAdLoaded ? "インタースティシャル広告表示" : "読み込み中...")
        }
        .disabled(!interstitial.interstitialAdLoaded)
    }
}
