//
//  TopMoviePreview.swift
//  buildnetflix
//
//  Created by Linh Dang on 1/23/24.
//

import SwiftUI
import Kingfisher

struct TopMoviePreview: View {
    var movie: Movie
    
    func isCategoryLast(_ cat: String) -> Bool {
        let catCount = movie.categories.count
        
        // optional: arr might not contain category
        if let index = movie.categories.firstIndex(of: cat) {
            if index + 1 != catCount {
                return false
            }
        }
        return true
    }
    
    var body: some View {
        ZStack {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped() // clipped on the edges
            
            VStack {
                Spacer()
                
                HStack {
                    ForEach(movie.categories, id: \.self) { category in
                        
                        HStack {
                            Text(category)
                            
                            if (!isCategoryLast(category)) { // optional view
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 4))
                            }
                        }
                    }
                }
                HStack {
                    Spacer()
                    
                    SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true){
                        // @todo take care of the action
                    }
                    
                    Spacer()
                    
                    PlayButton(text: "Play", imageName: "play.fill"){
                        // action
                    }
                    .frame(width: 120)
                    
                    Spacer()
                    
                    SmallVerticalButton(text: "Info", isOnImage: "info.circle", isOffImage: "info.circle", isOn: true){
                        // @todo take care of the action
                    }
                    
                    Spacer()
                }
                .padding(.vertical, 16)
            }
            .background(
                LinearGradient.blackOpacityGradient
            )
                .padding(.top, 250)
        }
        .foregroundColor(.white)
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: exampleMovie1)
    }
}
