//
//  SaveData.swift
//  WeatherApp
//
//  Created by Nguyễn Đình Thành Long on 12/10/19.
//  Copyright © 2019 Yusuf Özgül. All rights reserved.
//

import Foundation
import SwiftyJSON

extension UserDefaults {
    func setLocations<T: Codable>(_ value: [T], forKey defaultName: String){
        let data = value.map { try? JSONEncoder().encode($0) }
        for da in data {
            print(JSON(da))
        }
        set(data, forKey: defaultName)
    }
    
    func locationArray<T>(_ type: T.Type, forKey defaultName: String) -> [T] where T : Decodable {
        guard let encodedData = array(forKey: defaultName) as? [Data] else {
            return []
        }
        
        return encodedData.map { try! JSONDecoder().decode(type, from: $0) }
    }
}
