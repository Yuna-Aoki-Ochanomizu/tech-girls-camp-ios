//
//  CalculatorView.swift
//  CalculatorApp
//
//  ChallengeProjects
//

import SwiftUI

struct CalculatorView: View {
    // 最初に利用する変数を定義しています
    // @State: プロパティが変更されたときにビューを自動的に再描画するためのおまじない
    @State var firstNumber: String = ""
    @State var secondNumber: String = ""
    @State var result: String = "?"
    @State var thirdNumber: String = ""
    @State var fourthNumber: String = ""
    @State var result2: String = "?"
    
    var body: some View {
        VStack(spacing: 20) {
            Text("足し算電卓")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            HStack(spacing: 10) {
                // 1つ目の入力フィールド
                // @Stateのついたプロパティには$をつけるというおまじない。
                TextField("?", text: $firstNumber)
                    .keyboardType(.numberPad)
                    .frame(width: 60)
                    .multilineTextAlignment(.center)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Text("+")
                    .font(.title)
                
                // 2つ目の入力フィールド
                TextField("?", text: $secondNumber)
                    .keyboardType(.numberPad)
                    .frame(width: 60)
                    .multilineTextAlignment(.center)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Text("=")
                    .font(.title)
                
                // 結果の表示
                Text(result)
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(width: 100)
                    .multilineTextAlignment(.center)
            }
            
            // 計算ボタン
            Button(action: {
                // ここでボタンを押した時の挙動を記述
                // 今回は calculateSum() というメソッド(関数)を呼び出しています
                // 具体的な処理は calculateSum() 内に記述します
                calculateSum()
            }) {
                Text("計算する")
                    .fontWeight(.bold)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.pink)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.horizontal)
            
            Spacer()
        }
        .padding()
        
        Divider()
        
        // TODO: - Challenge2
        // 引き算電卓も作ってみよう
        VStack(spacing: 20) {
            Text("引き算電卓")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            HStack(spacing: 10) {
                // 1つ目の入力フィールド
                // @Stateのついたプロパティには$をつけるというおまじない。
                TextField("?", text: $thirdNumber)
                    .keyboardType(.numberPad)
                    .frame(width: 60)
                    .multilineTextAlignment(.center)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Text("-")
                    .font(.title)
                
                // 2つ目の入力フィールド
                TextField("?", text: $fourthNumber)
                    .keyboardType(.numberPad)
                    .frame(width: 60)
                    .multilineTextAlignment(.center)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Text("=")
                    .font(.title)
                
                // 結果の表示
                Text(result2)
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(width: 100)
                    .multilineTextAlignment(.center)
            }
            
            // 計算ボタン
            Button(action: {
                // ここでボタンを押した時の挙動を記述
                // 今回は calculateSum() というメソッド(関数)を呼び出しています
                // 具体的な処理は calculateSum() 内に記述します
                calculateMinus()
            }) {
                Text("計算する")
                    .fontWeight(.bold)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.horizontal)
            
            Spacer()
        }
        .padding()
        
        Divider()
        
    }
    
    // 足し算の処理
    func calculateSum() {
        // TODO: - Challenge1
        // ここに計算ロジックを記述し、計算結果を表示できるようにしてみよう
        let firstNumberInt = Int(firstNumber)
        let secondNumberInt = Int(secondNumber)
        if let firstNumberInt, let secondNumberInt {
            // 値が存在する時はこっち (= Intにキャストできた時)
            let resultInt = firstNumberInt + secondNumberInt
            result = String(resultInt)
        }
        if let firstNumberDouble = Double(firstNumber), let secondNumberDouble = Double(secondNumber){
            let resultDouble = firstNumberDouble + secondNumberDouble
            result = String(resultDouble)
        }else {
            // 値が存在しない時はこっち (= Intにキャストできなかった時)
            result = "Error"
        }
        
    }
    func calculateMinus() {
        let thirdNumberInt = Int(thirdNumber)
        let fourthNumberInt = Int(fourthNumber)
        if let thirdNumberInt, let fourthNumberInt {
            // 値が存在する時はこっち (= Intにキャストできた時)
            let result2Int = thirdNumberInt - fourthNumberInt
            result2 = String(result2Int)
        }
        
        if let thirdNumberDouble = Double(thirdNumber), let fourthNumberDouble = Double(fourthNumber){
            let result2Double = thirdNumberDouble - fourthNumberDouble
            result2 = String(result2Double)
        }
            
            
            
        else {
            // 値が存在しない時はこっち (= Intにキャストできなかった時)
            result2 = "Error"
        }
    }
}

    
    #Preview {
        CalculatorView()
    }




