//
//  Movie.swift
//  buildnetflix
//
//  Created by Linh Dang on 1/23/24.
//

import Foundation

struct Movie: Identifiable {
    var id: String // = UUID().uuidString -> [optonal]  automatically send a random id
    var name: String
    var thumbnailURL: URL
    
    var categories: [String]
    var genre: HomeGenre = .AllGenres
    
    // MovieDetail View
    var year: Int
    var rating: String
    var numberOfSeasons: Int? // optional: it could be a movie
    
    // Personalization
    var currentEpisode: CurrentEpisodeInfo?
    var defaultEpisodeInfo: CurrentEpisodeInfo // default if there is no personalized data
    
    var creators: String
    var cast: String
    var moreLikeThisMovies: [Movie]
    
    var episodes: [Episode]? // optional
    
    var movieType: MovieType {
        return episodes == nil ? .movie : .tvShow 
    }
    
    var promotionHeadline: String?
    
    var trailers: [Trailer]
    
    var numberOfSeasonsDisplay: String {
        if let num = numberOfSeasons { // if it exists
            if num == 1 {
                return "1 season"
            } else {
                return "\(num) seasons"
            }
        }
        return ""
    }
    
    var episodeInfoDisplay: String {
        if let current = currentEpisode {
            return "S\(current.season):E\(current.episode) \(current.episodeName)"
        } else {
            return "S\(defaultEpisodeInfo.season):E\(defaultEpisodeInfo.episode) \(defaultEpisodeInfo.episodeName)"
        }
    }
    
    var episodeDescriptionDisplay: String {
        if let current = currentEpisode {
            return current.description
        } else {
            return defaultEpisodeInfo.description
        }
    }
}

struct CurrentEpisodeInfo: Hashable, Equatable {
    var episodeName: String
    var description: String
    var season: Int
    var episode: Int
}

enum MovieType {
    case movie
    case tvShow
}
