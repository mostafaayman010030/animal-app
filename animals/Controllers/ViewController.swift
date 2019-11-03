//
//  ViewController.swift
//  animals
//
//  Created by Moustafa on 10/16/19.
//  Copyright © 2019 Moustafa Ayman Ahmed. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
    @IBOutlet weak var tableview: UITableView!
    
    
    var ob1:Animal!
//    var sections=["unkilers", "kilers"]
//    var unkilers=["monky" ,"donky" ,"elephant" ,"horse" ,"cow" ]
//    var kilers=["lion" ,"tiger" ,"dragon" ,"shark" ]
//
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return Dataservice.instance.getsections().count
       // return sections.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section==0{
        return Dataservice.instance.getunkilers().count
            //return unkilers.count
        }
        else
        {
           return Dataservice.instance.getkilers().count
            //return kilers.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let Cell:category_cell=(tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)as? category_cell)!
        
        if indexPath.section==0
        {
            let category=Dataservice.instance.getcategory(fortitle:( Dataservice.instance.getsections()[indexPath.section]))[indexPath.row]
            
            Cell.updateview(category: category)
           // let category=unkilers[indexPath.row]
            return Cell
        }
        else if indexPath.section==1
        {
            
            let category=Dataservice.instance.getcategory(fortitle:( Dataservice.instance.getsections()[indexPath.section]))[indexPath.row]
            Cell.updateview(category: category)

            //let category=kilers[indexPath.row]
            return Cell
        }
        else
        {
            return category_cell()
        }
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
           print(Dataservice.instance.getcategory(fortitle:( Dataservice.instance.getsections()[indexPath.section]))[indexPath.row])
            
            // print(unkilers[indexPath.row])
            
           // let animal=Dataservice.instance.getcategory(fortitle:( Dataservice.instance.getsections()[indexPath.section]))[indexPath.row]
            //performSegue(withIdentifier: "show", sender: animal)
           
        
        let alert=UIAlertController(title: Dataservice.instance.getcategory(fortitle: Dataservice.instance.getsections()[indexPath.section])[indexPath.row].animalname, message: "this is an \(Dataservice.instance.getsections()[indexPath.section]) you chose from \(Dataservice.instance.getsections()[indexPath.section]) section", preferredStyle: .actionSheet)
        
        let action = UIAlertAction(title: "Done", style: .default, handler: nil)
           
        alert.addAction(action)
        present(alert,animated: true,completion: nil)
        }
           
    
    
    
    // oneanimala?.animal=(animalall?.returninfo(name: (animal?.animalname as? String)!))!
            //oneanimala?.animal=animalall?.returninfo(name: animal?.animalname)
                
               // var animal=Dataservice.instance.getcategory(fortitle:( Dataservice.instance.getsections()[indexPath.section]))[indexPath.row]
               
                //var sectionname=Dataservice.instance.getsections()[indexPath.section]
                
               // animal1.animalname=animal.animalname
                //animal1.sectionname=sectionname
                
               // print(sectionname)
                //let animal=unkilers[indexPath.row]
                
                
                //animal1.animals.append(Animal(titlename: unkilers[indexPath.row], imagename: <#T##String#>, decription: <#T##String#>))
            
        
        
        

    
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return Dataservice.instance.getsections()[section]
        //return  sections[section]
    }
    
}



