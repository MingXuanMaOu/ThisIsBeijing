//
//  SnackBarRatingView.swift
//  ThisisBeijing
//
//  Created by 刘铭 on 2023/1/2.
//

import SwiftUI

struct SnackBarRatingView: View {
    
    let snackBar: SnackBar
    
    var body: some View {
        HStack(alignment: .center,spacing: 5, content: {
            ForEach(1...(snackBar.rating),id: \.self, content: {
                _ in Image(systemName: "star.fill")
                    .font(.body)
                    .foregroundColor(Color.yellow)
            })
        })
    }
}

struct SnackBarRatingView_Previews: PreviewProvider {
    static var previews: some View {
        SnackBarRatingView(snackBar: snackBarsData[1])
            .previewLayout(.fixed(width: 320, height: 60))
    }
}
