//
//  SettingsView.swift
//  ThisisBeijing
//
//  Created by 刘铭 on 2023/1/1.
//

import SwiftUI

struct SettingsView: View {
    
    @State private var enableNotification = true
    @State private var backgroundRefresh = false
    
    var body: some View {
        VStack(alignment: .center,spacing: 0, content: {
            VStack(alignment: .center,spacing: 5, content: {
                Image("Beijing-Logo")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100,height: 100,alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8,x: 0,y: 4)
                
                Text("这里是北京")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorBrownAdaptive"))
            })
            .padding()
            
            Form{
                Section(header: Text("通用设置"), content: {
                    Toggle(isOn: $enableNotification, label: {
                        Text("启动消息通知")
                    })
                    Toggle(isOn: $backgroundRefresh, label: {
                        Text("刷新背景")
                    })
                })
                
                Section(header: Text("应用程序"), content: {
                    if enableNotification{
                        HStack{
                            Text("开发者")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("liuming / Happy")
                        }
                        HStack{
                            Text("设计者")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Oscar")
                        }
                        HStack{
                            Text("兼容性")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("IOS 14")
                        }
                        HStack{
                            Text("SwiftUI")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("2.0")
                        }
                        HStack{
                            Text("版本")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("1.2.0")
                        }
                    }else{
                        HStack{
                            Text("私人信息")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("希望你能够喜欢本章的学习")
                        }
                    }
                })
            }
            
            
        })
        .frame(maxWidth: 640)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
