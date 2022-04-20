//
//  MusicView.swift
//  matched-geo
//
//  Created by Patrick Fuller on 3/11/22.
//

import SwiftUI

struct MusicPlayerBar: View {
    
    let namespace: Namespace.ID
    
    var body: some View {
        HStack {
            
            ZStack {
                Image(systemName: "square")
                Image(systemName: "staroflife")
            }
            .padding(10)
            .font(.system(size: 40))
            .background(.black)
            .foregroundColor(.mint)
            .cornerRadius(10)
            .padding()
            .matchedGeometryEffect(id: "animation", in: namespace)
            
            Text("Music Name")
                .font(.headline)
            
            Spacer()
            
            Image(systemName: "play.fill")
            Image(systemName: "forward.fill")
                .padding(.trailing, 10)
        }.frame(maxWidth: .infinity, maxHeight: 80)
            .background(Color(red: 0.9, green: 0.9, blue: 0.9))
    }
}

struct MusicPlayer: View {
    
    let namespace: Namespace.ID
    
    var body: some View {
        VStack {
            ZStack {
                Image(systemName: "square")
                    .resizable()
                    .scaledToFit()
                Image(systemName: "staroflife")
                    .resizable()
                    .scaledToFit()
            }
            .padding(30)
            .font(.system(size: 40))
            .background(.black)
            .foregroundColor(.mint)
            .cornerRadius(20)
            .padding(40)
            .matchedGeometryEffect(id: "animation", in: namespace)
            
            HStack {
                VStack {
                    Text("Song Name")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Text("Band Name")
                        .font(.title)
                        .fontWeight(.light)
                        .foregroundColor(.white)
                }.padding()
                Spacer()
            }
            
            HStack {
                Image(systemName: "backward.fill")
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                Image(systemName: "play.fill")
                    .foregroundColor(.white)
                    .font(.system(size: 50))
                    .padding(.horizontal, 75)
                Image(systemName: "forward.fill")
                    .foregroundColor(.white)
                    .font(.system(size: 30))
            }
            
            Spacer()
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.indigo)
    }
}

struct MusicView: View {
    
    @Namespace var ns
    @State var showDetails: Bool = false
    
    var body: some View {
        VStack {
            Spacer()
            if showDetails {
                MusicPlayer(namespace: ns)
                
            } else {
                MusicPlayerBar(namespace: ns)
            }
        }.onTapGesture {
            withAnimation {
                showDetails.toggle()
            }
        }
    }
}

struct MusicView_Previews: PreviewProvider {
    static var previews: some View {
        MusicView()
    }
}
