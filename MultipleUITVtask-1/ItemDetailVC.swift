//
//  ItemDetailVC.swift
//  MultipleUITVtask-1
//
//  Created by ADMIN on 15/05/25.
//

import UIKit

class ItemDetailVC: UIViewController {
    @IBOutlet weak var ItemImage: UIImageView!
    
   
    @IBOutlet weak var ItemDetails: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        ItemImage.image = SelectedImage
        ItemDetails.text = SelectedDetails
        self.navigationItem.title = title1
      
    }
    
    var title1: String?
    var SelectedImage: UIImage?
    var SelectedDetails: String = ""
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
