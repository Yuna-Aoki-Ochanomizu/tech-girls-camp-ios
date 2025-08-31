import SwiftUI

struct FavoriteView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("お気に入り")
                    .font(.largeTitle)
                    .padding()
                
                Text("お気に入りに追加したコーヒーがここに表示されます")
                    .foregroundColor(.gray)
                    .padding()
                
                NavigationLink(destination: CoffeeListView()) {
                    Text("コーヒー一覧でお気に入りを探す")
                }
                .padding()
            }
            
            .padding()
        }        
    }
}


#Preview {
    FavoriteView()
}
//
//  FavoriteView.swift
//  NetworkedApp
//
//  Created by 青木優奈 on 2025/08/31.
//

