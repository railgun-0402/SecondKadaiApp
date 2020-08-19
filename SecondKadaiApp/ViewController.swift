//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 菅原大輝 on 2020/08/12.
//  Copyright © 2020 菅原大輝. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var field: UITextField!
    
    @IBAction func unwind(_segue:UIStoryboardSegue){
        // 他の画面からsegueを使って戻ってきた時に呼ばれる
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "name"{
            //変数：遷移先ResultViewController型　＝　segue.destination as? 遷移先
            let next = segue.destination as! ResultViewController
            
            //値をわたす
            next.name = self.field.text
        }
                
    }


}

