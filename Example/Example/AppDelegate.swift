//
//  AppDelegate.swift
//  Example
//
//  Created by lilongcnc on 2022/7/22.
//

import UIKit
import Lokalise

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        Lokalise.shared.setProjectID("3336176862da2ebcdbc086.38174161", token:"54d121a8f7367dc66d2854a01c7b47b8ea7e3aa3")
        Lokalise.shared.swizzleMainBundle()
        
        return true
    }

 
    func applicationDidBecomeActive(_ application: UIApplication) {
        Lokalise.shared.checkForUpdates { (updated, errorOrNil) in
            print("Updated: \(updated)\nError: \(errorOrNil)")
        }
    }
    
    
    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

