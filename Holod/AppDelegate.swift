//
//  AppDelegate.swift
//  Holod
//
//  Created by Артем Холодок on 15.07.2020.
//  Copyright © 2020 Артем Холодок. All rights reserved.
//

import UIKit
import RxSwift
import RxAlamofire
import Alamofire

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {


    let stringURL = "https://api.github.com/users/hadley/orgs"
      
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
       let session = Session.default

       _ = session.rx.request(.get, stringURL)
        .validate(statusCode: 200 ..< 300)
        .validate(contentType: ["application/json"])
        .json()
        .observeOn(MainScheduler.instance)
        .subscribe { print($0) }


        return true
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

