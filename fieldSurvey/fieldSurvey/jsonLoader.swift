//
//  jsonParser.swift
//  fieldSurvey
//
//  Created by Melissa Hollingshed on 12/12/18.
//  Copyright © 2018 Melissa Hollingshed. All rights reserved.
//

import Foundation

class jsonLoader {
    class func load(fileName: String) -> [Observation] {
        var observation = [Observation]()
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
            observation = jsonParser.parse(data)
        }
        return observation
    }
}
