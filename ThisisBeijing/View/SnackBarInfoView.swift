//
//  SnackBarInfoView.swift
//  ThisisBeijing
//
//  Created by 刘铭 on 2023/1/2.
//

import SwiftUI

struct SnackBarInfoView: View {
    
    let snackBar: SnackBar
    
    var body: some View {
        HStack(alignment: .center,spacing: 12, content: {
            HStack(alignment: .center,spacing: 2, content: {
                Image(systemName: "person.3")
                Text("可用餐人数: \(snackBar.serves)")
            })
            HStack(alignment: .center,spacing: 2, content: {
                Image(systemName: "clock")
                Text("备时：\(snackBar.preparation)")
            })
            HStack(alignment: .center,spacing: 2, content: {
                Image(systemName: "flame")
                Text("热度：\(snackBar.hot)")
            })
        })
        .font(.footnote)
        .foregroundColor(.gray)
    }
}

struct SnackBarInfoView_Previews: PreviewProvider {
    static var previews: some View {
        SnackBarInfoView(snackBar: snackBarsData[0])
            .previewLayout(.fixed(width: 320, height: 60))
    }
}
