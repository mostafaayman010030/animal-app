//
//  Animal.swift
//  animals
//
//  Created by Moustafa on 10/16/19.
//  Copyright © 2019 Moustafa Ayman Ahmed. All rights reserved.
//

import Foundation
struct Animal {
    private(set) var imagename:String
    private(set) var titlename:String
    private(set) var descrip:String
    
    init(titlename:String,imagename:String,decription:String) {
        self.titlename=titlename
        self.imagename=imagename
        self.descrip=decription
    }

}
