//
//  ImageViewController.swift
//  Swift5 MenuApp
//
//  Created by 平林宏淳 on 2020/05/29.
//  Copyright © 2020 Hiroaki_Hirabayashi. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var logoimage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = logoimage
    }
    
    func setupElements(image: UIImage){
        
        logoimage = image
        
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
