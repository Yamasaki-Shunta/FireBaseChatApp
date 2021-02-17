//
//  SendToDBModel.swift
//  FireBaseChatApp
//
//  Created by 山﨑隼汰 on 2021/02/17.
//

import Foundation
import FirebaseStorage

protocol SendProfileOKDelegate {
    
    
    func sendProfileOKDelegate(url:String)
    
}

class SendToDBModel {
    
    
    var sendProfileOKDelegate:SendProfileOKDelegate?
    
    
    init(){
        
    }
    
    func sendProfileImageData(data:Data){
        
        let image = UIImage(data: data)
        
        //データ型にしている
        let profileImageData = image?.jpegData(compressionQuality: 0.1)
        
        let imageRef = Storage.storage().reference().child("profileImage").child("\(UUID().uuidString + String(Date().timeIntervalSince1970)).jpg")
        

        
        imageRef.putData(profileImageData!, metadata:nil) { (metaData, error) in
            
            if error != nil{
            
                print(error.debugDescription)
                return
            }
            
            
            imageRef.downloadURL { (url, error) in
                    
                if error != nil{
                
                    print(error.debugDescription)
                    return
                }
                
                //アプリ内に保存
                UserDefaults.standard.setValue(url?.absoluteString, forKey: "userImage")
                self.sendProfileOKDelegate?.sendProfileOKDelegate(url: url!.absoluteString)
                
                
            }
            
            //ここ2
            
            
        }
        
        //ここ1
        
    }
    
    
}
