//
//  SnackBarDetailView.swift
//  ThisisBeijing
//
//  Created by 刘铭 on 2023/1/2.
//

import SwiftUI

struct SnackBarDetailView: View {
    
    let snackBar: SnackBar
    
    @State private var pulsate: Bool = false
    @Environment(\.presentationMode) var presentationMode
    
    
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            VStack(alignment: .center,spacing: 0, content: {
                Image(snackBar.image)
                    .resizable()
                    .scaledToFit()
                
                Group{
                    Text(snackBar.title)
                        .font(.system(.largeTitle,design: .serif))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("ColorBrownAdaptive"))
                        .padding(.top,10)
                    
                    SnackBarRatingView(snackBar: snackBar)
                    SnackBarInfoView(snackBar: snackBar)
                    
                    Text("美 食 介 绍")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    VStack(alignment: .leading, spacing: 5, content: {
                        ForEach(snackBar.introduction,id:\.self, content: {
                            item in VStack(alignment: .leading, spacing: 5, content: {
                                Text(item)
                                    .font(.footnote)
                                    .multilineTextAlignment(.leading)
                                Divider()
                            })
                        })
                    })
                    Text("制 作 方 法")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    ForEach(snackBar.method,id:\.self){
                        item in VStack(alignment: .center, spacing: 5, content: {
                            Image(systemName: "chevron.down.circle")
                                .resizable()
                                .frame(width: 42, height: 42, alignment: .center)
                                .imageScale(.large)
                                .font(Font.title.weight(.ultraLight))
                                .foregroundColor(Color("ColorBrownAdaptive"))
                            
                            Text(item)
                                .lineLimit(nil)
                                .multilineTextAlignment(.center)
                                .font(.system(.body,design:.serif))
                                .frame(minHeight:100)
                        })
                    }
                }
                .padding(.horizontal,24)
                .padding(.vertical,12)
            })
        }
        .edgesIgnoringSafeArea(.all)
        .overlay(content: {
            HStack{
                Spacer()
                VStack{
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "chevron.down.circle.fill")
                            .font(.title)
                            .foregroundColor(.white)
                            .shadow(radius: 4)
                            .opacity(self.pulsate ? 1 : 0.6)
                            .scaleEffect(self.pulsate ? 1.2: 0.8,anchor: .center)
                            .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true))
                    })
                    .padding(.trailing,20)
                    .padding(.top,24)
                    Spacer()
                }
            }
        })
        .onAppear(){
            self.pulsate.toggle()
        }
    }
}

struct SnackBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SnackBarDetailView(snackBar: snackBarsData[1])
    }
}
