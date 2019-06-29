//
//  MSetUpRouter.swift
//  Moody
//
//  Created by Neha Pant on 26/06/2019.
//  Copyright (c) 2019 Neha Pant. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

@objc protocol MSetUpRoutingLogic
{
    func routeNextScreen()
}

protocol MSetUpDataPassing
{
  var dataStore: MSetUpDataStore? { get }
}

class MSetUpRouter: NSObject, MSetUpRoutingLogic, MSetUpDataPassing
{
  weak var viewController: MSetUpViewController?
  var dataStore: MSetUpDataStore?

  /*
     Routing Period QNA screen
  */
  func routeNextScreen()
  {
    let periodQNAScreen = PeriodQNAViewController()
    viewController?.navigationController?.pushViewController(periodQNAScreen, animated: true)
  }
}
