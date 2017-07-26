//
//  MainTableViewController.swift
//  DesafioNotas
//
//  Created by Vitor Ferraz on 24/07/17.
//  Copyright © 2017 Quaddro. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {

  
  //MARK: -  Outlets
  
  //MARK: -  Propriedades
  
  //MARK: -  ViewLifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()

       paddingTop()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return fileManagerReminder.listOfReminders.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "LembreteCell", for: indexPath)
      var reminder = fileManagerReminder.listOfReminders[indexPath.row]
      cell.textLabel!.text = reminder["titulo"]
      cell.detailTextLabel?.text = reminder["data"]
      
      
      
     
        return cell
    }
  override func viewWillAppear(_ animated: Bool) {
    tableView.reloadData()
  }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */
  
  //MARK: -  Métodos
  func paddingTop(){
    //pega o tamanho da barra de status
    let statusBarHeight = UIApplication.shared.statusBarFrame.height
    //insere o tamanho no topo
    let insets = UIEdgeInsets(top: statusBarHeight, left: 0, bottom: 0, right: 0)
    //atualiza o tamanho do top da tableView
    tableView.contentInset = insets
    //atualizar o tamanho do top do scroll
    tableView.scrollIndicatorInsets = insets
  }
  
  //MARK: -  Actions
  
  @IBAction func home(_ sender:UIStoryboardSegue){
    //Funciona mesmo estando vazio. Puxar a action do botao para o exit na viewController correspondente
    
  }

}
