//
//  HomeVM.swift
//  buildnetflix
//
//  Created by Linh Dang on 1/23/24.
//

import Foundation

class HomeVM: ObservableObject {
    // String == Category
    @Published var movies: [String: [Movie]] = [:] // empty
    
    public var allCategories: [String] { // computed property
        return movies.keys.map({ String($0)}) // for each key in the movies dictionary, take the key – $0 – and init a string with it
    }
    
    public var allGenre: [HomeGenre] = [.AllGenres, .Action, .Comedy, .Horror, .Thriller] // static list for now
    
    public func getMovie(forCat cat: String, andHomeRow homeRow: HomeTopRow, andGenre genre: HomeGenre) -> [Movie] {
    
        switch homeRow {
            case .home:
                return movies[cat] ?? []
            case .movies:
            return (movies[cat] ?? []).filter({ ($0.movieType == .movie) && ($0.genre == genre) })
            case .tvShows:
                return (movies[cat] ?? []).filter({ ($0.movieType == .tvShow) && ($0.genre == genre)})
            case .myList:
                return movies[cat] ?? []
            // TODO: Setup MyList
            }
        }
    init(){
        setupMovies()
    }
    
    func setupMovies() {
        movies["Trending Now"] = exampleMovies
        movies["Stand-Up Comedies"] = exampleMovies.shuffled()
        movies["New Releases"] = exampleMovies.shuffled()
        movies["Watch It Again"] = exampleMovies.shuffled()

    }
}
