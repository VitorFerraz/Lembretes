//
//  ReminderFileManager.swift
//  DesafioNotas
//
//  Created by Vitor Ferraz on 24/07/17.
//  Copyright © 2017 Quaddro. All rights reserved.
//

import UIKit

 let fileManagerReminder = ReminderFileManager()

class ReminderFileManager{
 fileprivate let home = NSHomeDirectory()
 fileprivate var pathDocuments = ""
 fileprivate var pathDicionarioSalvo = ""

  var listOfReminders: [Dictionary<String, String>] = [[:]]
  
  
  func setUpFileManager(){
    pathDocuments = home.appendPathComponent("Documents")
    pathDicionarioSalvo = pathDocuments.appendPathComponent("Reminders.plist")
    print(pathDicionarioSalvo)
   // listOfReminders.remove(at: 0)

  }
  
  init() {
    setUpFileManager()
   _ = loadRemiders()
    
    

  }
  
  func saveReminder(reminder:[String : String]){
 
    listOfReminders.append(reminder)
    (listOfReminders as NSArray).write(toFile: pathDicionarioSalvo, atomically: true)
    print("Reminder Salvo")
    print(pathDicionarioSalvo)
    dump(listOfReminders)
  }
  
  func loadRemiders()->[Dictionary<String, String>]{
    let listRetrive = NSArray(contentsOfFile: pathDicionarioSalvo)
    print(listRetrive ?? "Lista vazia")
    
    listOfReminders = listRetrive as! [Dictionary<String, String>]
    return listOfReminders as! [Dictionary<String, String>]
  }
  
  
 
}
