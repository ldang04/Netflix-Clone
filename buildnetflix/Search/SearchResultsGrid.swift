//
//  SearchResultsGrid.swift
//  buildnetflix
//
//  Created by Linh Dang on 2/2/24.
//

import SwiftUI

struct SearchResultsGrid: View {
    var movies: [Movie]
    
    @Binding var movieDetailToShow: Movie?
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 10){
            ForEach(movies) { movie in
                StandardHomeMovie(movie: movie)
                    .onTapGesture {
                        movieDetailToShow = movie
                    }
            }
        }
    }
}

struct SearchResultsGrid_Previews: PreviewProvider {
    static var previews: some View {
        SearchResultsGrid(movies: generateMovies(10), movieDetailToShow: .constant(nil))
    }
}
