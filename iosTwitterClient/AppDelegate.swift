//
//  AppDelegate.swift
//  iosTwitterClient
//
//  Created by yogasawara@stv on 2018/03/04.
//  Copyright © 2018年 sunday carpenter. All rights reserved.
//

import UIKit
import TwitterKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        initializeTwitterKit()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
    }

    func applicationWillTerminate(_ application: UIApplication) {
    }

}

extension AppDelegate {
    func initializeTwitterKit() {
        do {
            let jsonName = "credential"
            let credential = try TwitterAPICredential(json: jsonName)
            TWTRTwitter.sharedInstance().start(withConsumerKey: credential.consumer_key,
                                               consumerSecret: credential.consumer_secret)
        } catch {
            assertionFailure("can`t load twitter credential.")
        }
    }
}
