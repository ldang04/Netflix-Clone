//
//  StandardHomeMovie.swift
//  buildnetflix
//
//  Created by Linh Dang on 1/23/24.
//

import SwiftUI
import Kingfisher

struct StandardHomeMovie: View {
    var movie: Movie
    
    var body: some View {
        KFImage(movie.thumbnailURL) // kingfisher automatically caches this image (does not make another network request)
            .resizable()
            .scaledToFill()
    }
}

struct StandardHomeMovie_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeMovie(movie: exampleMovie1)
    }
}
