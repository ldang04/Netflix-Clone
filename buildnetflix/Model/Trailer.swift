//
//  Trailer.swift
//  buildnetflix
//
//  Created by Linh Dang on 1/25/24.
//

import Foundation

struct Trailer: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var name: String
    var videoURL: URL
    var thumbnailImageURL: URL
}
