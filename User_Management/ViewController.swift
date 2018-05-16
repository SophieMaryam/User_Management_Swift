//
//  ViewController.swift
//  User_Management
//
//  Created by Sophie van Wersch on 23/04/2018.
//  Copyright © 2018 Sophie van Wersch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // OUTLETS
    @IBOutlet var loadingView: UIView!
    
    @IBOutlet weak var shineView: ThreePointGradientView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showLoadingScreen()

    }
    
    func showLoadingScreen(){
        loadingView.bounds.size.width = view.bounds.width - 25
        loadingView.bounds.size.height = view.bounds.height - 40
        // loads in center with existing size
        loadingView.center = view.center
        view.addSubview(loadingView)
        
        UIView.animate(withDuration: 0.3, delay: 0.5, options: [], animations: {            self.loadingView.alpha = 1}) {
            (success) in
                self.animateShineView()
        }
    }
    
    func animateShineView(){
        UIView.animate(withDuration: 1, delay: 0.2, options: [], animations:
            {
                self.shineView.transform = CGAffineTransform(translationX: 0, y:-800)
        }, completion: { (success) in
            self.hideLoadingScreen()
            
        })
    }
    
    func hideLoadingScreen(){
        UIView.animate(withDuration: 0.1, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0, options: [], animations: {
            self.loadingView.transform = CGAffineTransform(translationX: 0, y: 10)
        }) { (success) in
            UIView.animate(withDuration: 0.3, animations: {
                self.loadingView.transform = CGAffineTransform(translationX: 0, y: -800)
            })
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }


}

