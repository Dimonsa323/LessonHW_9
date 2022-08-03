//
//  FilmsModel.swift
//  LessonHW_9
//
//  Created by Дима Губеня on 03.08.2022.
//

import Foundation

struct Films {
    let film: String
    let filmImage: String
}

extension Films {
    static func getFilms() -> [Films] {
        return [Films(film: "Темный Рыцарь", filmImage: "Темный рыцарь"),
                Films(film: "Темный Рыцарь 2", filmImage:  "Темный Рыцарь_2"),
                Films(film: "Темный Рыцарь 3", filmImage: "Темный рыцарь_3"),
                Films(film: "Довод", filmImage:  "Довод"),
                Films(film: "Одноклассники", filmImage: "Одноклассники"),
                Films(film: "Одноклассники 2", filmImage: "Одноклассники_2"),
                Films(film: "Чужой", filmImage: "Чужой")]
    }
}
