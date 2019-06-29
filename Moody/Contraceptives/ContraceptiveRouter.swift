//
//  ContraceptiveRouter.swift
//  Moody
//
//  Created by Neha Pant on 27/06/2019.
//  Copyright (c) 2019 Neha Pant. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

@objc protocol ContraceptiveRoutingLogic
{
   func routeNextScreen()
   func popScreen()
    
}

protocol ContraceptiveDataPassing
{
  var dataStore: ContraceptiveDataStore? { get }
}

class ContraceptiveRouter: NSObject, ContraceptiveRoutingLogic, ContraceptiveDataPassing
{
    weak var viewController: ContraceptiveViewController?
    var dataStore: ContraceptiveDataStore?
    
    func routeNextScreen(){
        let menstralCycleQNAVC = MenstralCycleQNAViewController()
        viewController?.navigationController?.pushViewController(menstralCycleQNAVC, animated: true)
    }
    func popScreen(){
        viewController?.navigationController?.popViewController(animated: true)
    }
}
