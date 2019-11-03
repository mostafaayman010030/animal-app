//
//  Dataservice.swift
//  animals
//
//  Created by Moustafa on 10/16/19.
//  Copyright © 2019 Moustafa Ayman Ahmed. All rights reserved.
//

import Foundation

class Dataservice
{
        static let  instance=Dataservice()
        private let sections=["unkilers", "kilers"]
        private let unkilers=[Category(animalname:"monky" ),Category(animalname:"donky" ),Category(animalname:"elephant" ),Category(animalname:"horse" ),Category(animalname:"cow" )]
        private let kilers=[Category(animalname:"lion" ),Category(animalname:"tiger" ),Category(animalname:"dragon" ),Category(animalname:"shark" )]

    func getsections() -> [String] {
        return sections
    }
    func getcategory(fortitle title:String) -> [Category] {
        switch title {
        case "unkilers":
                return getunkilers()
            
            case "kilers":
                return getkilers()
            
        default:
            return getunkilers()
        }
    }
    
    func getunkilers() -> [Category] {
        return unkilers;
    }
    func getkilers() -> [Category] {
        return kilers;
    }
    
    
}
