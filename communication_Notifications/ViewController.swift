//
//  ViewController.swift
//  communication_Notifications
//
//  Created by arshad on 4/26/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var Goto: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(getdata(no:)), name: .name1, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(getdata1(no:)), name: .name1, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(getdata2(no:)), name: .name1, object: nil)
    }

    
    
        @objc func getdata(no:Notification){
            
            let data =  no.userInfo as? [String:Any]
            print(data?["Data"] as? [String:Any]?)
            
        }
    
    
    @objc func getdata1(no:Notification){
        
        let data =  no.userInfo as? [String:Any]
        print(data?["Data"] as? [String:Any]?)
        
    }
    
    @objc func getdata2(no:Notification){
        
        let data =  no.userInfo as? [String:Any]
        print(data?["Data"] as? [String:Any]?)
        
    }

    @IBAction func goto(_ sender: Any) {
        
        let data:[String:Any] =  ["Data" :["first":"rahim","lastName":"basha","age":90]]
        NotificationCenter.default.post(name: .name1, object: nil, userInfo: data)

    }
}



extension Notification.Name{
    static let name1 = Notification.Name(rawValue: "Hello")
}



/*
 
 
 *************************************** Object Passing Data *******************************


 //Object : —> passing UI Components Data (Label, textfield….  Data to next Observer
 //Userinfo :—> Passing Data s customer data (Dictionary Or Arrays)



 Method1:

  NotificationCenter.default.post(name: .name1, object: nil)

  NotificationCenter.default.addObserver(self, selector: #selector(getdata(no:)), name: .name1, object: nil)

  @objc func getdata(no:Notification){
         print("Hey im notity you man")
     }


 *********************** Method2: Object

 Passing String As Object:

  let data = "Hell Mr Khan"
   NotificationCenter.default.post(name: .name1, object: data, userInfo: nil)

  NotificationCenter.default.addObserver(self, selector: #selector(getdata(no:)), name: .name1, object: nil)

 @objc func getdata(no:Notification){
         
        let getdata =   no.object as? String
         print(getdata)
     }


 Passing Array As Object:
   let data:[Any] = ["Hello",12,33,"sadas",0980]
         NotificationCenter.default.post(name: .name1, object: data, userInfo: nil)

 NotificationCenter.default.addObserver(self, selector: #selector(getdata(no:)), name: .name1, object: nil)

  @objc func getdata(no:Notification){
             
            let getdata =   no.object as? [Any]
             print(getdata!)
         }


 Passing Array As Dictionary:
 let data:[String:Any] = ["1":1,"2":3,"4":4]
  NotificationCenter.default.post(name: .name1, object: data, userInfo: nil)

 NotificationCenter.default.addObserver(self, selector: #selector(getdata(no:)), name: .name1, object: nil)

  @objc func getdata(no:Notification){
             
            // let getdata =   no.object as? NSDictionary
             let getdata =   no.object as? [String:Any]
             guard let data = getdata else { return }
             print(data)
             
             for i in data{
                 print(i.key)
                 print(i.value)
             }
         }


 ********************. Method 3 : user Info:

 let data:[String:Any] =  ["Data" :["first":"rahim","lastName":"basha","age":90]]
         NotificationCenter.default.post(name: .name1, object: nil, userInfo: data)

 NotificationCenter.default.addObserver(self, selector: #selector(getdata(no:)), name: .name1, object: nil)


         @objc func getdata(no:Notification){
             
             let data =  no.userInfo as? [String:Any]
             print(data?["Data"] as? [String:Any]?)
             
         }

 
 
 
 */
