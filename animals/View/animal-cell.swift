//
//  animal-cell.swift
//  animals
//
//  Created by Moustafa on 10/16/19.
//  Copyright © 2019 Moustafa Ayman Ahmed. All rights reserved.
//

import UIKit

class animal_cell: UITableViewCell {

    @IBOutlet weak var titlelable: UILabel!
    @IBOutlet weak var decription: UITextView!
    @IBOutlet weak var imageanimal: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    func updateview(category:Category)  {
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
