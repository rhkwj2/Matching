//
//  Person2ViewController.swift
//  AllenShit
//
//  Created by Kim Yeon Jeong on 2020/2/20.
//  Copyright © 2020 Kim Yeon Jeong. All rights reserved.
//

import UIKit

class Person2ViewController: UIViewController, UIPopoverPresentationControllerDelegate {
//    @IBOutlet weak var barButtonItem: UIBarButtonItem!
    @IBOutlet weak var button: UIButton!
    
    @IBAction func popUpPressed(_ sender: Any) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "informationPopupSegueIdentifier" {
            let popUpViewController: PopUpViewController = segue.destination as! PopUpViewController
            popUpViewController.popoverPresentationController?.backgroundColor = UIColor.darkGray
            popUpViewController.popoverPresentationController!.delegate = self
            
            let presentationViewController = popUpViewController.popoverPresentationController
            presentationViewController?.permittedArrowDirections = .any
            presentationViewController?.delegate = self
            presentationViewController?.sourceView = button
            presentationViewController?.sourceRect = button.bounds
        }
    }
    
    func adaptivePresentationStyle(for controller:
        UIPresentationController) -> UIModalPresentationStyle {
        return UIModalPresentationStyle.none
    }
    
    func presentationController(_ controller: UIPresentationController, viewControllerForAdaptivePresentationStyle style: UIModalPresentationStyle) -> UIViewController? {
        return UINavigationController(rootViewController: controller.presentedViewController)
    }
    
    func popoverPresentationControllerDidDismissPopover(_ popoverPresentationController: UIPopoverPresentationController) {
        
        print("Controller did dismiss popover.")
    }
    
    func popoverPresentationControllerShouldDismissPopover(_ popoverPresentationController: UIPopoverPresentationController) -> Bool {
        
        print("Controller should dismiss popover.")
        
        return true
    }
    
    
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
