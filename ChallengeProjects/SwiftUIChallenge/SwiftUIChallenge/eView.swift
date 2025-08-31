//
//  SwiftUIChallenge
//  画像と同じようなViewを実装してみよう！
//
// E. 商品アイテム
//

import SwiftUI

struct eView: View {
    var body: some View {
        VStack(alignment: .leading){
            AsyncImage(url: URL(string: "https://picsum.photos/300/200")!)
                .cornerRadius(10)
            Text("商品名：おしゃれなバッグ")
            Text("¥12,800")
                .foregroundColor(.green)
                
            
            
        }
        
        
        
    }
}

#Preview {
    eView()
}
