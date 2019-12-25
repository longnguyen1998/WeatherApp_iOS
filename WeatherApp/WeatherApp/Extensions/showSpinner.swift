//
//  showSpinner.swift
//  WeatherApp
//
//  Created by Nguyễn Đình Thành Long on 12/25/19.
//  Copyright © 2019 Yusuf Özgül. All rights reserved.
//

import UIKit

fileprivate var aView: UIView?

extension UIViewController{
    
    func showSpinner(){
        aView = UIView(frame: self.view.bounds)
        aView?.backgroundColor = UIColor.init(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.5)
        
        let ai = UIActivityIndicatorView(style: .whiteLarge)
        ai.center = aView!.center
        ai.startAnimating()
        aView?.addSubview(ai)
        self.view.addSubview(aView!)
    }
    
    func removeSpinner(){
        DispatchQueue.main.async {
            aView?.removeFromSuperview()
            aView = nil
        }
        
    }
}
