//
//  ViewController.swift
//  PicturesScrollView
//
//  Created by Evgenia Galetskaya on 10/27/18.
//  Copyright © 2018 Evgenia Galetskaya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myScrollView = UIScrollView()
    var myImageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createScrollView()
        
    }
    
    private func createScrollView() {
        let scrollViewRect = self.view.bounds
        myScrollView = UIScrollView(frame: scrollViewRect)
        myScrollView.isPagingEnabled = true
        myScrollView.contentSize = CGSize(width: scrollViewRect.size.width * 3,
                                          height: scrollViewRect.size.height)
        self.view.addSubview(myScrollView)
        
        let iPhoneImage = UIImage(named: "iphone")
        let iPadImage = UIImage(named: "ipad")
        let macBookImage = UIImage(named: "mac")

        var imageViewRect = self.myScrollView.bounds
        let iPhoneImageView = newImageViewWithImage(image: iPhoneImage!, frame: imageViewRect)
        myScrollView.addSubview(iPhoneImageView)

        // next "page"
        imageViewRect.origin.x += imageViewRect.size.width
        let iPadImageView = newImageViewWithImage(image: iPadImage!, frame: imageViewRect)
        myScrollView.addSubview(iPadImageView)
        
        imageViewRect.origin.x += imageViewRect.size.width
        let macBookImageView = newImageViewWithImage(image: macBookImage!, frame: imageViewRect)
        myScrollView.addSubview(macBookImageView)
        
    }
    
    private func newImageViewWithImage(image: UIImage, frame: CGRect) -> UIImageView {
        let newImageView = UIImageView(frame: frame)
        newImageView.contentMode = .scaleAspectFit
        newImageView.image = image
        return newImageView
    }

}

