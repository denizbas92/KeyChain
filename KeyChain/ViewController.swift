//
//  ViewController.swift
//  KeyChain
//
//  Created by apple on 18.12.2019.
//  Copyright © 2019 Deniz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // self.saveValueToKeychain() // Keychain içerisine value kayıt edildi
        self.getValueFromKeychain() //  // Keychain içerisinden value kayıt geri alındı
    }
    
    func saveValueToKeychain() {
        let currentTime: String = getTime()
        print("currentTime",currentTime)
        KeychainWrapper.standard.set("key chaing deneme" + currentTime, forKey: "Serdar")
    }
    
    func getValueFromKeychain(){
        var title: String = "Secret stuff!"
        let currentTime: String = getTime()
        print("currentTime",currentTime)
        print("before", title)
        if let text = KeychainWrapper.standard.string(forKey: "Serdar") {
           title = text
        }
        print("after", title)
    }
    
    func getTime() -> String {
        let timeStamp:String = DateFormatter.localizedString(from: NSDate() as Date, dateStyle: .medium, timeStyle: .short)
        return timeStamp
    }
    
    // 18 Dec 2019 18:32
}

