//
//  ViewController.swift
//  coredataexample
//
//  Created by Admin on 10/06/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var data = [User]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        insertData()
        
         fetchData()
    
    }

    func insertData()
    {
        let userone = User(context: context)
        
        userone.name = "vijay"
        userone.age = 25
        
        
        
        let usertwo = User(context: context )
        
        usertwo.name = "ajay"
        usertwo.age = 25
    
    
    
    }
    
    
    func fetchData()
    {
    
        do
            {
                data = try context.fetch(User.fetchRequest())
                for each in data
                {
                    
                    print("name : \(each.name!) \n age :\(each.age) \n")
                  }
    
    
                }
  
           catch
            {
   
    
    
             }
        }
}

