//
//  SnackBarCardView.swift
//  ThisisBeijing
//
//  Created by 刘铭 on 2023/1/2.
//

import SwiftUI

struct SnackBarCardView: View {
    
    let snackBar: SnackBar
    let hapticIImpact = UIImpactFeedbackGenerator(style: .heavy)
    
    @State private var showModel: Bool = false
    
    var body: some View {
        VStack(alignment: .center,spacing: 0, content: {
            Image(snackBar.image)
                .resizable()
                .scaledToFit()
                .overlay(content: {
                    HStack{
                        Spacer()
                        VStack{
                            Image(systemName: "bookmark")
                            
                                .font(Font.title.weight(.light))
                                .foregroundColor(.white)
                                .imageScale(.small)
                                .shadow(color: Color("ColorBlackTransparentLight"), radius: 2,x: 0,y: 0)
                                .onTapGesture {
                                    self.hapticIImpact.impactOccurred()
                                    self.showModel = true
                                }
                                .sheet(isPresented: $showModel, content: {
                                    SnackBarDetailView(snackBar: self.snackBar)
                                        
                                })
                            
                                .padding(.trailing,20)
                                .padding(.top,20)
                            Spacer()
                        }
                    }
                })
            VStack(alignment: .leading,spacing: 12, content: {
                Text(snackBar.title)
                    .font(.system(.title,design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorBrownMedium"))
                    .lineLimit(1)
                
                Text(snackBar.headline)
                    .font(.system(.body,design: .serif))
                    .foregroundColor(Color.gray)
                
                SnackBarRatingView(snackBar: snackBar)
                
                SnackBarInfoView(snackBar: snackBar)
            })
            .padding()
            .padding(.bottom,12)
            
           
        })
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"),radius:8,x:0,y: 0)
        
    }
    
}

struct SnackBarCardView_Previews: PreviewProvider {
    static var previews: some View {
        SnackBarCardView(snackBar: snackBarsData[7])
            .previewLayout(.sizeThatFits)
    }
}
