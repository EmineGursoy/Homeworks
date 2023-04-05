//
//  EmptyView.swift
//  SearchBarSample
//
//  Created by Emine Sinem on 31.03.2023.
//

import UIKit

class EmptyView: UIView {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
    }

    func commonInit() {
        let bundle = Bundle.init(for: EmptyView.self)
        if let viewToAdd = bundle.loadNibNamed("EmptyView", owner: self, options: nil), let contentView = viewToAdd.first as? UIView{
            addSubview(contentView)
            contentView.frame = self.bounds
            
        }
        
    }
}
