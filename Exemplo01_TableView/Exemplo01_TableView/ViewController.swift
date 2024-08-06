//
//  ViewController.swift
//  Exemplo01_TableView
//
//  Created by Usuário Convidado on 05/08/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var minhaTableView: UITableView!
    
    var animal = ["Urso", "Girafa", "Rinoceronte", "Leão", "Elefante"]
    var foto = ["urso.png", "girafa.png", "rino.png", "leao.png", "ele.png"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        minhaTableView.dataSource = self;
        minhaTableView.delegate = self;
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animal.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        celula.textLabel?.text = animal[indexPath.row]
        celula.imageView?.image = UIImage(named: foto[indexPath.row])
        celula.detailTextLabel?.text = "Bla bla bla"
        celula.accessoryType = .detailButton
        
        return celula
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Você clicou no: \(animal[indexPath.row])")
    }

}

