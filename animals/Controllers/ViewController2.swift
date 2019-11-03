//
//  ViewController2.swift
//  animals
//
//  Created by Moustafa on 10/16/19.
//  Copyright © 2019 Moustafa Ayman Ahmed. All rights reserved.
//

import UIKit

class ViewController2: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var Kanimals=[Animal]()
    var unKanimals=[Animal]()
    var animals=[Animal]()
    var ob2:Animal!
    var animalname:String?
    var sectionname:String?
    var sections:[String]=["unkilers","kilers"]

    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        animals.append(Animal(titlename: "monkey", imagename: "monkey", decription: "the most simeler animal to the human"))
        animals.append(Animal(titlename: "donky", imagename: "donky", decription:"the most helpful animal to the faramer in egypt" ))
        animals.append(Animal(titlename:"elephant", imagename:"elephant" , decription:"the bigest and the heveiset animal in the world" ))
        animals.append(Animal(titlename: "horse", imagename: "horse",decription: "one of the fastest animals in the world"))
        
        animals.append(Animal(titlename: "cow" , imagename: "cow", decription:"ver kinde animal and the human get from it meat milk and ect" ))
        
      
               animals.append(Animal(titlename: "lion", imagename: "lion", decription:"the most helpful animal to the faramer in egypt" ))
               animals.append(Animal(titlename:"tiger", imagename:"tiger" , decription:"the bigest and the heveiset animal in the world" ))
               animals.append(Animal(titlename: "dragon", imagename: "dragon",decription: "one of the fastest animals in the world"))
               
               animals.append(Animal(titlename: "shark" , imagename: "shark", decription:"ver kinde animal and the human get from it meat milk and ect" ))
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
       }
    
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //animals=unKanimals+Kanimals

      if   let cell:animal_cell=(tableView.dequeueReusableCell(withIdentifier: "mycell", for: indexPath)as? animal_cell)!
      {
        cell.titlelable.text=animals[indexPath.row].titlename
        cell.imageanimal.image=UIImage(named: animals[indexPath.row].imagename)
        cell.decription.text=animals[indexPath.row].descrip
        return cell
        }
      else
      {
        return category_cell()
       }

        
        
//        let cell:animal_cell=(tableView.dequeueReusableCell(withIdentifier: "mycell", for: indexPath)as? animal_cell)!
//
//        animals=unKanimals+Kanimals
//        if sections[0]==sectionname
//        {
//        cell.titlelable.text=unKanimals[indexPath.row].titlename
//        cell.imageanimal.image=UIImage(named: unKanimals[indexPath.row].imagename)
//        cell.decription.text=unKanimals[indexPath.row].descrip
//        return cell
//        }
//        else
//        {
//            cell.titlelable.text=Kanimals[indexPath.row].titlename
//            cell.imageanimal.image=UIImage(named: Kanimals[indexPath.row].imagename)
//            cell.decription.text=Kanimals[indexPath.row].descrip
//            return cell
//        }
        
        }
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*func returninfo(name:String)->[Animal]
    {
        var theanimal=[Animal]()
        for x in animals
        {
            if x.titlename==name
            {
                
                theanimal.append(Animal(titlename: x.titlename, imagename: x.imagename, decription: x.descrip))
            }
        }
        return theanimal
    }

    /*
     
     
     let cell:animal_cell=(tableView.dequeueReusableCell(withIdentifier: "mycell", for: indexPath)as? animal_cell)!
         
         if sections[0]==sectionname
         {
         cell.titlelable.text=unKanimals[indexPath.row].titlename
         cell.imageanimal.image=UIImage(named: unKanimals[indexPath.row].imagename)
         cell.decription.text=unKanimals[indexPath.row].descrip
         return cell
         }
         else
         {
             cell.titlelable.text=Kanimals[indexPath.row].titlename
             cell.imageanimal.image=UIImage(named: Kanimals[indexPath.row].imagename)
             cell.decription.text=Kanimals[indexPath.row].descrip
             return cell
         }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
 */
}
