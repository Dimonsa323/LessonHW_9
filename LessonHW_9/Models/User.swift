//
//  User.swift
//  LessonHW_9
//
//  Created by Max Stovolos on 8/2/22.
//

import Foundation
import UIKit

struct User {
    var name: String
    var password: String
    var film: String
    var filmImage: UIImage
    var tvSeries: String
    var releaseDate: Int
}

extension User {
    static func getInfoList() -> [User] {
        
    }
}
