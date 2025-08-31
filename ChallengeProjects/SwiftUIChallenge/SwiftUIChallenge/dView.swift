//
//  SwiftUIChallenge
//  画像と同じようなViewを実装してみよう！
//
// D. 四角形の中に3つのテキストを等間隔に配置（異なるアライメント）
//

import SwiftUI

struct dView: View {
    var body: some View {
            Rectangle()
                .fill(Color.red)
                .frame(width: 300, height: 150)
                .overlay(
                    VStack(spacing: 20){
                        Text("Left Aligned")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.system(size: 15))
                        Text("Center Aligned")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .font(.system(size: 30))
                        Text("Right Aligned")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                            .font(.system(size: 20))
                            
                    }
                    )
            
            
        
    }
}

#Preview {
    dView()
}
