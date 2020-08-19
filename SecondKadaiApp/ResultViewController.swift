//
//  ResultViewController.swift
//  SecondKadaiApp
//
//  Created by 菅原大輝 on 2020/08/12.
//  Copyright © 2020 菅原大輝. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    //２画面目のLabelを、StoryboardでこのViewControllerにIBOutletとして接続しておく
    @IBOutlet weak var label: UILabel!
    
    
    //viewControllerから受け取るための変数
    var name:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let naming = name {
            //nilではない場合
            label.text = ("こんにちは、\(naming)さん")
        } else {
            //nilの場合
            label.text = ("こんにちは、名前さん")
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
