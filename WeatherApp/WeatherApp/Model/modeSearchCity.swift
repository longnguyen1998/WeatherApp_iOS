//
//  modeSearchCity.swift
//  WeatherApp
//
//  Created by Nguyễn Đình Thành Long on 12/3/19.
//  Copyright © 2019 Yusuf Özgül. All rights reserved.
//


import Foundation

// MARK: - ModeSearchCity
class ModeSearchCity: Codable {
    let version: Int?
    let key, type: String?
    let rank: Int?
    let localizedName: String?
    let country, administrativeArea: AdministrativeArea?
    
    enum CodingKeys: String, CodingKey {
        case version = "Version"
        case key = "Key"
        case type = "Type"
        case rank = "Rank"
        case localizedName = "LocalizedName"
        case country = "Country"
        case administrativeArea = "AdministrativeArea"
    }
    
    init(version: Int?, key: String?, type: String?, rank: Int?, localizedName: String?, country: AdministrativeArea?, administrativeArea: AdministrativeArea?) {
        self.version = version
        self.key = key
        self.type = type
        self.rank = rank
        self.localizedName = localizedName
        self.country = country
        self.administrativeArea = administrativeArea
    }
}

// MARK: - AdministrativeArea
class AdministrativeArea: Codable {
    let id, localizedName: String?
    
    enum CodingKeys: String, CodingKey {
        case id = "ID"
        case localizedName = "LocalizedName"
    }
    
    init(id: String?, localizedName: String?) {
        self.id = id
        self.localizedName = localizedName
    }
}
extension ModeSearchCity {
    var saveCity: [String: String] {
        guard let key = key, let localizedName = localizedName else {
            return [:]
        }
        return [key: localizedName]
    }
}

