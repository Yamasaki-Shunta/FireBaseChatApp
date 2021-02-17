//
//  CheckPermission.swift
//  FireBaseChatApp
//
//  Created by 山﨑隼汰 on 2021/02/17.
//

import Foundation
import Photos

class CheckPermission {
    
    func showCheckPermission(){
        PHPhotoLibrary.requestAuthorization { (status) in
            
            switch(status){
                
            case .authorized:
                print("許可されてますよ")

            case .denied:
                    print("拒否")

            case .notDetermined:
                        print("notDetermined")
                
            case .restricted:
                        print("restricted")
                
            case .limited:
                print("limited")
            @unknown default: break
                
            }
            
        }
    }

}
