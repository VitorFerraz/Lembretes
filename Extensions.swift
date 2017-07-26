//
//  Extensions.swift
//  FileManager
//
//  Created by Vitor Ferraz on 22/07/17.
//  Copyright © 2017 Quaddro. All rights reserved.
//

import Foundation

extension String{
  func appendPathComponent(_ component: String)->String{
    return  (self as NSString).appendingPathComponent(component)
  }
  
  
}


