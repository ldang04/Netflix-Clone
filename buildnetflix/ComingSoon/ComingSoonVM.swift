//
//  ComingSoonVM.swift
//  buildnetflix
//
//  Created by Linh Dang on 2/3/24.
//

import Foundation

class ComingSoonVM: ObservableObject {
    @Published var movies: [Movie] = []
    
    init(){
        self.movies = generateMovies(20)
    }
}
