//
//  ViewController.swift
//  Swift5 MenuApp
//
//  Created by 平林宏淳 on 2020/05/29.
//  Copyright © 2020 Hiroaki_Hirabayashi. All rights reserved.
//

import UIKit
import DLAutoSlidePageViewController


class ViewController: UIViewController {

    @IBOutlet weak var slideView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        elements()
    }
    
    
    func elements(){
        
        setupPageViewController()
        
    }
    
    func setupPageViewController(){
        
        let pages: [UIViewController] = setupPages()
        let pageViewController = DLAutoSlidePageViewController(pages: pages,
                                                               timeInterval: 3.0,
                                                               transitionStyle: .scroll,
                                                               interPageSpacing: 0.0)
        addChild(pageViewController)
        slideView.addSubview(pageViewController.view)
        pageViewController.view.frame = slideView.bounds
    }

    func setupPages() ->[UIViewController]{
        
        let page1 = storyboard?.instantiateViewController(withIdentifier: "ImageViewController") as! ImageViewController
        page1.setupElements(image: UIImage(named: "0")!)
        
        let page2 = storyboard?.instantiateViewController(withIdentifier: "ImageViewController") as! ImageViewController
        page2.setupElements(image: UIImage(named: "1")!)
        
        let page3 = storyboard?.instantiateViewController(withIdentifier: "ImageViewController") as! ImageViewController
        page3.setupElements(image: UIImage(named: "2")!)
        
        return[page1, page2, page3]
        
        
    }

}

