//
//  NotificationCenter.swift
//  SwiftFiles
//
//  Created by 엄철찬 on 2022/05/03.
//

import Foundation
import UIKit

class Notification {
    static let shared = Notification()
    
    let notificationCenter = NotificationCenter.default
    
    private init(){
        notificationCenter.addObserver(self, selector: #selector(appMovedToBackground), name: UIApplication.willResignActiveNotification, object: nil)
        
        notificationCenter.addObserver(self, selector: #selector(appMovedToBackground1), name: UIApplication.didEnterBackgroundNotification, object: nil)
        
        notificationCenter.addObserver(self, selector: #selector(appCameToForeground), name: UIApplication.willEnterForegroundNotification, object: nil)
    }
    
    @objc func appMovedToBackground() {
        print("App moved to background!")
    }
    
    @objc func appMovedToBackground1() {
        print("app enters background")
    }

    @objc func appCameToForeground() {
        print("app enters foreground")
    }
}
