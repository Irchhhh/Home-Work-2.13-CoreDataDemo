//
//  AppDelegate.swift
//  coreDataDemo
//
//  Created by Ирина on 08.12.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    
    func applicationWillTerminate(_ application: UIApplication) {
        StorageManager.saveContext()
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.rootViewController = UINavigationController(rootViewController: TaskListTableViewController())
        return true
    }

   
}

