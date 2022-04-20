//
//  AsyncImageTest.swift
//  testingggg
//
//  Created by Mirna Helmy on 4/18/22.
//

import SwiftUI

//With Async Image, we can asynchonrously download images from a URL with only a few lines of code.

struct AsyncImageTest: View {
    
    //let url = URL(string: "https://picsum.photos/200")
    let url = URL(string: "https://picsum.photos/400")
    
    var body: some View {
        
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let returnedImage):
                returnedImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                    .cornerRadius(20)
            case .failure:
                Image(systemName: "questionmark")
                    .font(.headline)
            default:
                Image(systemName: "questionmark")
                    .font(.headline)
            }
        }
        
        
        
        
//        AsyncImage(url: url, content: { returnedImage in
//            returnedImage
//                .resizable()
//                .scaledToFit()
//                .frame(width: 100, height: 100)
//                .cornerRadius(20)
//        }, placeholder: {
//            ProgressView()
//        })
    }
}

struct AsyncImageTest_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageTest()
        
    }
}
