//
//  ResultadoViewController.swift
//  exercicio_table
//
//  Created by Usuário Convidado on 19/08/24.
//

import UIKit

class ResultadoViewController: UIViewController {

    @IBOutlet weak var resultadoText: UILabel!
    var resultado = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultadoText.text = resultado
        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        

        
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
