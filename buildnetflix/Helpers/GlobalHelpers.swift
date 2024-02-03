//
//  GlobalHelpers.swift
//  buildnetflix
//
//  Created by Linh Dang on 1/23/24.
//

import Foundation
import SwiftUI

let exampleVideoURL = URL(string: "https://embed-ssl.wistia.com/deliveries/cc8402e8c16cc8f36d3f63bd29eb82f99f4b5f88/accudvh5jy.mp4")!

let exampleImageURL = URL(string: "https://picsum.photos/200/104")!
let exampleImageURL2 = URL(string: "https://picsum.photos/200/105")!
let exampleImageURL3 = URL(string: "https://picsum.photos/200/106")!

var randomExampleImageURL: URL {
    return [exampleImageURL, exampleImageURL2, exampleImageURL3].randomElement() ?? exampleImageURL
}

let exampleTrailer1 = Trailer(name: "Season 3 Trailer", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)
let exampleTrailer2 = Trailer(name: "The Hero's Journey", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)
let exampleTrailer3 = Trailer(name: "The Mysterious", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)

let exampleTrailers = [exampleTrailer1, exampleTrailer2, exampleTrailer3]

let episode1 = Episode(
    name: "Beginnings and Endings",
    season: 1,
    episodeNumber: 1,
    thumbnailImageURLString: "https://picsum.photos/200/102",
    description: "Six months after the disappearances, the police form a task force. In 2052, Jonas learns that most of Winden perished in an apocalyptic event.",
    length: 53,
    videoURL: exampleVideoURL
)

let episode2 = Episode(
    name: "Dark Matter",
    season: 1,
    episodeNumber: 2,
    thumbnailImageURLString: "https://picsum.photos/200/103",
    description: "Clausen and Charlotte interview Regina. The Stranger takes Hannah to 1987, where Claudia has an unnerving encounger and Egon visits an old nemesis.",
    length: 54,
    videoURL: exampleVideoURL
)

let episode3 = Episode(
    name: "Ghosts",
    season: 1,
    episodeNumber: 3,
    thumbnailImageURLString: "https://picsum.photos/200/104",
    description: "In 1954, a missing Helge returns, but he'll only speak to Noah. In 1987, Claudia brings the time machine to Tannhaus, and Egon questions Ulrich again.",
    length: 55,
    videoURL: exampleVideoURL
)

let episode4 = Episode(
    name: "Beginnings and Endings",
    season: 2,
    episodeNumber: 1,
    thumbnailImageURLString: "https://picsum.photos/200/105",
    description: "Six months after the disappearances, the police form a task force. In 2052, Jonas learns that most of Winden perished in an apocalyptic event.",
    length: 53,
    videoURL: exampleVideoURL
)

let episode5 = Episode(
    name: "Dark Matter",
    season: 1,
    episodeNumber: 2,
    thumbnailImageURLString: "https://picsum.photos/200/106",
    description: "Clausen and Charlotte interview Regina. The Stranger takes Hannah to 1987, where Claudia has an unnerving encounger and Egon visits an old nemesis.",
    length: 54,
    videoURL: exampleVideoURL
)

let episode6 = Episode(
    name: "Ghosts",
    season: 1,
    episodeNumber: 2,
    thumbnailImageURLString: "https://picsum.photos/200/107",
    description: "In 1954, a missing Helge returns, but he'll only speak to Noah. In 1987, Claudia brings the time machine to Tannhaus, and Egon questions Ulrich again.",
    length: 55,
    videoURL: exampleVideoURL
)

var allExampleEpisodes = [episode1, episode2, episode3, episode4, episode5, episode6]

let exampleMovie1 = Movie(
    id: UUID().uuidString,
    name: "DARK",
    thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"], year: 2020, rating: "TV-MA",
    numberOfSeasons: 1,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Charlie Brooker, Konnie Huq, Jesse Armstrong, Rashida Jones",
    cast: "Wunmi Mosaku, Monica Dolan, Daniel Lapaine",
    moreLikeThisMovies: [],
    promotionHeadline: "Best Rated Show",
    trailers: exampleTrailers
); // picsum loads random image

let exampleMovie2 = Movie(
    id: UUID().uuidString,
    name: "Travelers",
    thumbnailURL: URL(string: "https://picsum.photos/200/301")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 2,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Charlie Brooker, Konnie Huq, Jesse Armstrong, Rashida Jones",
    cast: "Wunmi Mosaku, Monica Dolan, Daniel Lapaine",
    moreLikeThisMovies: [],
    trailers: exampleTrailers
);

let exampleMovie3 = Movie(
    id: UUID().uuidString,
    name: "Community",
    thumbnailURL: URL(string: "https://picsum.photos/200/302")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 3,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Charlie Brooker, Konnie Huq, Jesse Armstrong, Rashida Jones",
    cast: "Wunmi Mosaku, Monica Dolan, Daniel Lapaine",
    moreLikeThisMovies: [],
    promotionHeadline: "New episodes coming soon",
    trailers: exampleTrailers
);

let exampleMovie4 = Movie(
    id: UUID().uuidString,
    name: "Alone",
    thumbnailURL: URL(string: "https://picsum.photos/200/303")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 4,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Charlie Brooker, Konnie Huq, Jesse Armstrong, Rashida Jones",
    cast: "Wunmi Mosaku, Monica Dolan, Daniel Lapaine",
    moreLikeThisMovies: [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie5, exampleMovie6, exampleMovie7],
    episodes: allExampleEpisodes,
    promotionHeadline: "Watch Season 4 Now",
    trailers: exampleTrailers
);

let exampleMovie5 = Movie(
    id: UUID().uuidString,
    name: "Hannibal",
    thumbnailURL: URL(string: "https://picsum.photos/200/304")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 5,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Charlie Brooker, Konnie Huq, Jesse Armstrong, Rashida Jones",
    cast: "Wunmi Mosaku, Monica Dolan, Daniel Lapaine",
    moreLikeThisMovies: [],
    trailers: exampleTrailers
);

let exampleMovie6 = Movie(
    id: UUID().uuidString,
    name: "Afterlife",
    thumbnailURL: URL(string: "https://picsum.photos/200/305")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 6,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Charlie Brooker, Konnie Huq, Jesse Armstrong, Rashida Jones",
    cast: "Wunmi Mosaku, Monica Dolan, Daniel Lapaine",
    moreLikeThisMovies: [],
    promotionHeadline: "#1 Trending in the United States",
    trailers: exampleTrailers
); // changing URLs generates diff images (otherwise they are all cached as the same)

let exampleMovie7 = Movie(
    id: UUID().uuidString,
    name: "Afterlife",
    thumbnailURL: URL(string: "https://picsum.photos/200/306")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 6,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Charlie Brooker, Konnie Huq, Jesse Armstrong, Rashida Jones",
    cast: "Wunmi Mosaku, Monica Dolan, Daniel Lapaine",
    moreLikeThisMovies: [],
    promotionHeadline: "#1 Trending in the United States",
    trailers: exampleTrailers
);

var exampleMovies: [Movie] {
    return  [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6].shuffled()
}

let exampleEpisodeInfo1 = CurrentEpisodeInfo(episodeName: "The Waldo Moment", description: "A failed comedian who voices a popular cartoon bear named Waldo finds himself mixing politics when TV executives want Waldo to run for office", season: 1, episode: 1)

extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]),
        startPoint: .top,
        endPoint: .bottom
    )
}

extension String {
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
