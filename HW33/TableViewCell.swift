//
//  TableViewCell.swift
//  HW33
//
//  Created by Jarae on 2/3/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var imageVW: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    
    
    public func initUI(image: String, name: String, title: String){
        imageVW.image = UIImage(systemName: image)
        lblName.text = name
        lblTitle.text = title
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageView?.layer.cornerRadius = 40
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}
