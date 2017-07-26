//
//  ReminderViewController.swift
//  DesafioNotas
//
//  Created by Vitor Ferraz on 24/07/17.
//  Copyright © 2017 Quaddro. All rights reserved.
//

import UIKit

class ReminderViewController: UIViewController {

  
  //MARK: -  Outlets
  
  @IBOutlet weak var titleReminder: UITextField!
  @IBOutlet weak var textReminder: UITextView!
  //MARK: -  Propriedades
  

  
  //MARK: -  ViewLifeCycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
  //MARK: -  Métodos
  func getDate()->String{
    let data = Date()
    let formatter = DateFormatter()
    formatter.dateFormat = "dd/MM/yyyy"
    let dataResult  = formatter.string(from: data)
    return dataResult
  }
  
  //MARK: -  Actions

  @IBAction func addReminder(_ sender: UIButton) {
    
    if let titulo = textReminder.text, let texto = textReminder.text{
     var data = getDate()
      let reminder = ["titulo":titulo,"texto":texto,"data":data]
      fileManagerReminder.saveReminder(reminder: reminder )
      print("salvou")
      print(fileManagerReminder.loadRemiders())
    }
  
  }
}
