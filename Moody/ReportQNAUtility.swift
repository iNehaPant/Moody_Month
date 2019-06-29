//
//  ReportQNAUtility.swift
//  Moody
//
//  Created by Neha Pant on 29/06/2019.
//  Copyright © 2019 Neha Pant. All rights reserved.
//

import UIKit

private let QNA_COMPLETED = "QNA_COMPLETED"
private let ABOUT_PERIOD = "ABOUT_PERIOD"
private let ABOUT_CONTRACEPTIVE = "ABOUT_CONTRACEPTIVE"
private let ABOUT_LAST_PERIOD = "ABOUT_LAST_PERIOD"
private let ABOUT_CYCLE_LENGHT = "ABOUT_CYCLE_LENGHT"
class ReportQNAUtility {
    class func setQNACompleted(isCompleted:Bool)
    {
        UserDefaults.standard.set(isCompleted, forKey: QNA_COMPLETED)
    }
    class func getQNACompleted() -> Bool
    {
       return UserDefaults.standard.bool(forKey: QNA_COMPLETED)
    }
    class func setAboutPeriod(str:String?)
    {
        UserDefaults.standard.set(str, forKey: ABOUT_PERIOD)

    }
    class func getAboutPeriod() -> String?
    {
        return UserDefaults.standard.string(forKey: ABOUT_PERIOD)
    }
    class func setAboutContraceptive(str:String?)
    {
        UserDefaults.standard.set(MoodyData.shared.aboutContraceptive, forKey: ABOUT_CONTRACEPTIVE)
    }
    class func getAboutContraceptive() -> String?
    {
        return UserDefaults.standard.string(forKey: ABOUT_CONTRACEPTIVE)
        
    }
    class func setAboutLastPeriod(str:String?)
    {
        UserDefaults.standard.set(MoodyData.shared.aboutlastPeriod, forKey: ABOUT_LAST_PERIOD)

    }
    class func getAboutLastPeriod() -> String?
    {
        return UserDefaults.standard.string(forKey: ABOUT_LAST_PERIOD)
    }
    class func setAboutCycleLenght(str:String?)
    {
       UserDefaults.standard.set(MoodyData.shared.aboutCycleLenght, forKey: ABOUT_CYCLE_LENGHT)
    }
    class func getAboutCycleLenght() -> String?
    {
        return UserDefaults.standard.string(forKey: ABOUT_CYCLE_LENGHT)

    }
}
