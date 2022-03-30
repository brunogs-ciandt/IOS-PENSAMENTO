//
//  SceneDelegate.swift
//  Pensamentos
//
//  Created by administrator on 3/30/22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        print("SceneDelegate - sceneDidDisconnect")
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        print("SceneDelegate - sceneDidBecomeActive")
        
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "Refresh"), object: nil)
    }

    func sceneWillResignActive(_ scene: UIScene) {
       print("SceneDelegate - sceneWillResignActive")
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        print("SceneDelegate - sceneWillEnterForeground")
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        print("SceneDelegate - sceneDidEnterBackground")
    }


}

