//
//  AppView.swift
//  ThisisBeijing
//
//  Created by 刘铭 on 2023/1/1.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView{
            BeijingView()
                .tabItem({
                    Image("TabIcon-Beijing")
                    Text("北京")
                })
            FoodView()
                .tabItem(({
                    Image("TabIcon-Food")
                    Text("小吃")
                }))
            HutongView()
                .tabItem({
                    Image("TabIcon-Hutong")
                    Text("胡同")
                })
            SettingsView()
                .tabItem({
                    Image("TabIcon-Settings")
                    Text("设置")
                })
        }
        .accentColor(Color.primary)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            AppView()
                .preferredColorScheme(.light)
            AppView()
                .preferredColorScheme(.dark)
        }
        
    }
}
