//
//  MovieDetail.swift
//  buildnetflix
//
//  Created by Linh Dang on 1/24/24.
//

import SwiftUI

struct MovieDetail: View {
    var movie: Movie
    
    let screen = UIScreen.main.bounds
    
    @State private var showSeasonPicker = false
    @State private var selectedSeason = 1
    
    @Binding var movieDetailToShow: Movie?
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ZStack {
                VStack {
                    HStack {
                        Spacer()
                        
                        Button {
                            movieDetailToShow = nil
                        } label: {
                            Image(systemName: "xmark.circle")
                                .font(.system(size: 28))
                        }
                    }
                    .padding(.horizontal, 22)
                    
                    ScrollView(.vertical, showsIndicators: false){
                        VStack {
                            StandardHomeMovie(movie: movie)
                                .frame(width: screen.width / 2.5) // responsive width to device size
                            
                            MovieInfoSubheadline(movie: movie)
                                                    
                            if(movie.promotionHeadline != nil){
                                Text(movie.promotionHeadline!) // ! force unwrap
                                    .font(.headline)
                                    .bold()
                            }
                            
                            PlayButton(text: "Play", imageName: "play.fill", backgroundColor: .red){
                                // some action...
                            }
                            
                            // Current Episode Information
                            CurrentEpisodeInformation(movie: movie)
                            
                            CastInfo(movie: movie)
                            
                            HStack(spacing: 60) {
                                SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
                                    // some action...
                                }
                                
                                SmallVerticalButton(text: "Rate", isOnImage: "hand.thumbsup.fill", isOffImage: "hand.thumbsup", isOn: true) {
                                    // some action...
                                }
                                
                                SmallVerticalButton(text: "Share", isOnImage: "square.and.arrow.up", isOffImage: "square.and.arrow.up", isOn: true){
                                    // some action...
                                }
                                
                                Spacer()
                            }
                            .padding(.leading, 20)
                            
                            // Custom Tab Switcher
                            CustomTabSwitcher(tabs: [.episodes, .trailers, .more], movie: movie, showSeasonPicker: $showSeasonPicker, selectedSeason: $selectedSeason)
                        }
                        .padding(.horizontal, 10)
                    }
                    
                    Spacer()
                }
                .foregroundColor(.white)
                
                // Season picker
                if showSeasonPicker {
                    Group {
                        Color.black
                            .opacity(0.9)
                        
                        VStack(spacing: 40) {
                            Spacer()
                
                            ForEach(0..<(movie.numberOfSeasons ?? 0)) { season in
                                Button {
                                    self.selectedSeason = season + 1
                                    self.showSeasonPicker = false
                                } label: {
                                    Text("Season \(season + 1)")
                                        .foregroundColor(selectedSeason == season + 1 ? .white : .gray)
                                        .bold()
                                        .font(selectedSeason == season + 1 ? .title : .title2)
                                }
                            }
                            Spacer()
                            
                            Button {
                                self.showSeasonPicker = false
                            } label: {
                                Image(systemName: "x.circle.fill")
                                    .foregroundColor(.white)
                                    .font(.system(size: 40))
                                    .scaleEffect(x: 1.1)
                            }
                                .padding(.bottom, 30)
                        }
                    }
                        .edgesIgnoringSafeArea(.all)
                }
            }
            
        }
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: exampleMovie4, movieDetailToShow: .constant(nil))
    }
}

struct MovieInfoSubheadline: View {
    var movie: Movie
    
    var body: some View {
        HStack {
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            
            Text(verbatim: "\(movie.year)")
            
            RatingView(rating: movie.rating)
            
            Text(movie.numberOfSeasonsDisplay)
        }
        .foregroundColor(.gray)
        .padding(.vertical, 6)
    }
}

struct RatingView: View {
    var rating: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.gray)
            
            Text(rating)
                .foregroundColor(.white)
                .font(.system(size: 12))
                .bold()
        }
        .frame(width: 50, height: 20)
    }
}

struct CastInfo: View {
    var movie: Movie
    
    var body: some View {
        VStack(spacing: 3) {
            HStack {
                Text("Cast: \(movie.cast)")
                
                Spacer()
            }
            
            HStack {
                Text("Creators: \(movie.creators)")
                
                Spacer()
            }
        }
        .font(.caption)
        .foregroundColor(.gray)
        .padding(.vertical, 10)
    }
}

struct CurrentEpisodeInformation: View {
    var movie: Movie
    
    var body: some View {
        Group {
            HStack {
                Text(movie.episodeInfoDisplay)
                    .bold()
                Spacer()
            }
            .padding(.vertical, 4)
            
            HStack {
                Text(movie.episodeDescriptionDisplay)
                    .font(.subheadline)
                
                Spacer()
            }
        }
    }
}
