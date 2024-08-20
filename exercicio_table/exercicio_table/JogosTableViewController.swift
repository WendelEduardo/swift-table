//
//  JogosTableTableViewController.swift
//  exercicio_table
//
//  Created by Usuário Convidado on 19/08/24.
//

import UIKit

class JogosTableViewController: UITableViewController {

    var nomeJogo = ["Horizon Zero Dawn", "Uncharted 4"]
    var jogos = ["hor.jpeg", "unc.jpeg"]
    var estudios = ["Guerrila", "Naughty Dog"]
    var pontuacao = ["3", "4"]
    
    var resultado:String = "";
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //        minhaTableView.dataSource = self;
        //        minhaTableView.delegate = self;

        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return jogos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        cell.textLabel?.text = nomeJogo[indexPath.row]
        
        cell.imageView?.image = UIImage(named: jogos[indexPath.row])
        cell.detailTextLabel?.text = estudios[indexPath.row]
        cell.accessoryType = .detailButton
        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        resultado = nomeJogo[indexPath.row]
        performSegue(withIdentifier: "segueParaResultado", sender: nil)
    }
    
    override func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        let alerta = UIAlertController(
            title: nomeJogo[indexPath.row], message: pontuacao[indexPath.row], preferredStyle: UIAlertController.Style.alert
        )

        alerta.addAction(UIAlertAction(
            title: "Ok", style: UIAlertAction.Style.default
        ))

        present(alerta, animated: true)
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            nomeJogo.remove(at: indexPath.row)
            jogos.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        if segue.identifier == "segueParaResultado" {
            let t = segue.destination as! ResultadoViewController
            
            t.resultado = resultado
            
        }
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
