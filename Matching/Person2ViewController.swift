//
//  Person2ViewController.swift
//  AllenShit
//
//  Created by Kim Yeon Jeong on 2020/2/20.
//  Copyright © 2020 Kim Yeon Jeong. All rights reserved.
//

import UIKit

class Person2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        

    
    }
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func goBackToOneButtonTapped(_ sender: Any) {     performSegue(withIdentifier: "unwindSegueToResult", sender: self)}

    
    
}
