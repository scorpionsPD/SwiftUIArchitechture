//
//  AppConfiguration.swift
//  SwiftUIArchitechture
//
//  Created by Rajlaxmi Shekhawat on 01/09/19.
//  Copyright © 2019 Rajlaxmi Shekhawat. All rights reserved.
//

import Foundation



enum selectedScheme: String {
    case Dev = "Development"
    case Prod = "Production"
}

struct ConfigEndPoints {
    
    static var shared = ConfigEndPoints()
    static var serverURL:String?
    
    var appMode:selectedScheme {
        #if Development
        return .Dev
        #else
        return .Prod
        #endif
    }
    
    mutating func initialize() {
        
        switch appMode {
        case .Dev:
            ConfigEndPoints.serverURL = "https://tcapp.vccircle.com/"
            break
        case .Prod:
            ConfigEndPoints.serverURL = "https://tcapp.vccircle.com/"
            break
        }
    }
}
