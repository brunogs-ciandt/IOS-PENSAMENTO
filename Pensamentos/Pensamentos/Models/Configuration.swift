//
//  Configuration.swift
//  Pensamentos
//
//  Created by administrator on 3/30/22.
//

import Foundation

enum ConfigurationKeys: String {
    case timeInterval = "timeInterval"
    case colorShcema = "colorShcema"
    case autoRefesh = "autoRefresh"
}

class Configuration {
    let defaults = UserDefaults.standard
    static var shared: Configuration = Configuration()
    
    var timeInterval: Double {
        get {
            return defaults.double(forKey: ConfigurationKeys.timeInterval.rawValue)
        }
        set {
            defaults.set(newValue, forKey: ConfigurationKeys.timeInterval.rawValue)
        }
    }
    
    var autoRefresh: Bool {
        get {
            return defaults.bool(forKey: ConfigurationKeys.autoRefesh.rawValue)
        }
        set {
            defaults.set(newValue, forKey: ConfigurationKeys.autoRefesh.rawValue)
        }
    }
    
    var darkColor: Bool {
        get {
            return defaults.bool(forKey: ConfigurationKeys.colorShcema.rawValue)
        }
        set {
            defaults.set(newValue, forKey: ConfigurationKeys.colorShcema.rawValue)
        }
    }
}
