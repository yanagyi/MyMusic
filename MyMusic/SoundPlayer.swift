//
//  SoundPlayer.swift
//  MyMusic
//
//  Created by Hiro Yanagisawa on 2024/07/10.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {
    // 楽器音源データ取り込み
    let cymbalData = NSDataAsset(name: "cymbalSound")!.data
    let guitarData = NSDataAsset(name: "guitarSound")!.data
    //楽器用プレイヤーの変数
    var cymbalPlayer: AVAudioPlayer!
    var guitarPlayer: AVAudioPlayer!
    
    func cymbalPlay(){
        do{
            //シンバル用プレイヤーに音声データを指定
            cymbalPlayer = try AVAudioPlayer(data: cymbalData)
            //シンバルの音源再生
            cymbalPlayer.play()
        }catch{
            print("シンバルでエラーが発生しました")
        }
    }
    func guitarPlay(){
        do{
            guitarPlayer = try AVAudioPlayer(data: guitarData)
            guitarPlayer.play()
        }catch{
            print("ギターでエラーが発生しました")
        }
    }
}
