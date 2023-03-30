//
//  SwiftUIView.swift
//  
//
//  Created by changgyo seo on 2023/03/27.
//

import SwiftUI

struct Style14: StyleTemplate {
    
    var images: [UIImage]? = [UIImage(named: "Style14")!]
    
    var title: String?
    
    var subTitle: String?
    
    var mainColor: Color?
    
    var subColor: Color?
    
    var body: some View {
        ZStack {
            Image(uiImage: images![0])
                .resizable()
                .scaledToFill()
                .frame(width: 1200)
                .blur(radius: 50)
                .mask({
                    Rectangle()
                        .frame(height: 720)
                    
                })
                .frame(width: UIScreen.main.bounds.width ,height: 720)
            Image(uiImage: images![0])
                .resizable()
                .scaledToFill()
                .frame(width: 500, height: 500)
                .mask({
                    Rectangle()
                        .frame(width: 500, height: 500)
                })
        }
        .frame(width: UIScreen.main.bounds.width ,height: 720)
    }
}

struct preview_style1: PreviewProvider {
    static var previews: some View {
        Style14(images: [UIImage(named: "Style4_1")!,UIImage(named: "Style4_2")!,UIImage(named: "Style4_3")!], title: "안녕하세요", subTitle: "반갑습니다")
    }
}
