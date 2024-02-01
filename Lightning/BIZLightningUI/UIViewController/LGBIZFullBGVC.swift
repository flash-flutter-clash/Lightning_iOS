//
//  LGBIZFullBGVC.swift
//  Lightning
//
//  Created by nicola on 2024/2/1.
//

import UIKit
import SnapKit
class LGBIZFullBGVC: NiblessViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.hex(hexColor: 0x01040F)
        self.lgFullBGImageView.isHidden = false

    }
    
    

    
    
//    MARK: property
    lazy var lgFullBGImageView: UIImageView = {
        let bgImage = UIImage(named: "fullBG")
        let imgView = UIImageView(image: bgImage)
        imgView.contentMode = .scaleAspectFit
        self.view.addSubview(imgView)
        imgView.snp.makeConstraints { make in
            make.edges.height.width.equalToSuperview()
        }
        return imgView
    }()

}
