//
//  MoodyData.swift
//  Moody
//
//  Created by Neha Pant on 28/06/2019.
//  Copyright © 2019 Neha Pant. All rights reserved.
//

import Foundation

final class MoodyData {
    
    // Can't init is singleton
    private init() { }
    
    // MARK: Shared Instance
    
    static let shared = MoodyData()
        
    var aboutPeriod:String?
    var aboutContraceptive:String?
    var aboutlastPeriod:String?
    var aboutCycleLenght:String?
}
