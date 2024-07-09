//
//  ContentView.swift
//  MyMusic
//
//  Created by Hiro Yanagisawa on 2024/07/09.
//

import SwiftUI

struct ContentView: View {
    //SoundPlayerクラスのインスタンス生成
    let soundPlayer = SoundPlayer()
    
    var body: some View {
        ZStack {
            //背景画像指定
            Image(.background)
            //リサイズ
                .resizable()
            //セーフエリア外まで表示
                .ignoresSafeArea()
            //アス比を維持して短辺基準にして収める
                .scaledToFill()
            
            HStack{
                //シンバルボタン
                Button{
                    soundPlayer.cymbalPlay()
                }label: {
                    Image(.cymbal)
                }
                //ギターボタン
                Button{
                    soundPlayer.guitarPlay()
                }label: {
                    Image(.guitar)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
