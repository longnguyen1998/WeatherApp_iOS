//
//  AppDelegate.swift
//  WeatherApp
//

import UIKit

//    let apiKey = "DDuYJkQdetuI8T3VanO1x2TjjGF1aR5O" // Accuweather API Key
let apiKey = "EtNkAeJqM8Or0JJiXCTb4GulGV4W9f1q"  //EtNkAeJqM8Or0JJiXCTb4GulGV4W9f1q      FA26YLIvWfOaCBniO8YtkGpknT53hk8M      DDuYJkQdetuI8T3VanO1x2TjjGF1aR5O      wGqhKqOnFUu457hfxeANAMMGfdZjY9yo
let appDelegate = UIApplication.shared.delegate as! AppDelegate

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var weatherResponses = [WeatherResponse]()
    var modeCitys = [ModeSearchCity]()
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        self.weatherResponses = UserDefaults.standard.locationArray(WeatherResponse.self, forKey: "weatherResponses")
        self.modeCitys = UserDefaults.standard.locationArray(ModeSearchCity.self, forKey: "modeCitys")
        
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    
}

