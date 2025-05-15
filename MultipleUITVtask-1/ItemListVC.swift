//
//  ItemListVC.swift
//  MultipleUITVtask-1
//
//  Created by ADMIN on 15/05/25.
//

import UIKit

class ItemListVC: UIViewController ,  UITableViewDelegate , UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Fruits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tcell = tableView.dequeueReusableCell(withIdentifier: "morecell") as! MoreItemVCell

        switch recivedItem {
        case "Fruits":
            tcell.ItemName.text = Fruits[indexPath.row]
            tcell.ItemPrice.text = FruitsPrice[indexPath.row]
            tcell.ItemImage.image = AssetsFruits[indexPath.row]
            Itemname = Fruits[indexPath.row]
            ItemDetails = fruitsDetails[indexPath.row]
            ItemImage = AssetsFruits[indexPath.row]

            

            
            
        case "Vegetables":
            tcell.ItemName.text = Vegetables[indexPath.row]
            tcell.ItemPrice.text = VegetablesPrice[indexPath.row]
            tcell.ItemImage.image = AssetsVegetables[indexPath.row]
            Itemname = Vegetables[indexPath.row]
            ItemDetails = VegetablesDetails[indexPath.row]
            ItemImage = AssetsVegetables[indexPath.row]
            

            


        case "Grocery":
            tcell.ItemName.text = Grocery[indexPath.row]
            tcell.ItemPrice.text = GroceryPrice[indexPath.row]
            tcell.ItemImage.image = AssetsGrocery[indexPath.row]
            Itemname = Grocery[indexPath.row]
            ItemDetails = GroceryDetail[indexPath.row]
            ItemImage = AssetsGrocery[indexPath.row]



        default:
            
            tcell.ItemImage.image = UIImage(named: "egg 2")

        }
//        ItemImage = tcell.ItemImage.image!
//        Itemname = tcell.ItemName.text!
        
        return tcell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let itemdetailsinfo = sb.instantiateViewController(withIdentifier: "itemdetails") as! ItemDetailVC
       
//        
//        itemdetailsinfo.title = Itemname
//        itemdetailsinfo.ItemImage.image = AssetsFruits[indexPath.row]
//        itemdetailsinfo.ItemDetails.text = fruitsDetails[indexPath.row]
//        navigationController?.pushViewController(itemdetailsinfo, animated: true)
        
        switch recivedItem {
           case "Fruits":
               itemdetailsinfo.title1 = Fruits[indexPath.row]
               itemdetailsinfo.SelectedImage = AssetsFruits[indexPath.row]
               itemdetailsinfo.SelectedDetails = fruitsDetails[indexPath.row]
               
           case "Vegetables":
               itemdetailsinfo.title1 = Vegetables[indexPath.row]
            
               itemdetailsinfo.SelectedImage = AssetsVegetables[indexPath.row]
               itemdetailsinfo.SelectedDetails = VegetablesDetails[indexPath.row]
               
           case "Grocery":
               itemdetailsinfo.title1 = Grocery[indexPath.row]
               itemdetailsinfo.SelectedImage = AssetsGrocery[indexPath.row]
               itemdetailsinfo.SelectedDetails = GroceryDetail[indexPath.row]
               
           default:
               break
           }
        navigationController?.pushViewController(itemdetailsinfo, animated: true)
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
        
    }
    


    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = recivedItem

        // Do any additional setup after loading the view.
    }
    var recivedItem: String = ""
    var Fruits = ["Apple","Banana","Grapes","orange"]
    var Vegetables = ["carrot", "spinach", "broccoli", "potato"]
    var Grocery = ["milk", "eggs", "bread", "bananas"]
    
    var fruitsDetails = ["An apple is a round, fleshy fruit with a core containing seeds, typically red, yellow, or green",
                        "A banana is an elongated, curved fruit with a yellow peel when ripe, and soft, sweet flesh",
                        "Grapes are small, oval fruits that grow in clusters on vines. They are botanically berries and belong to the genus Vitis",
                        "An orange is a round citrus fruit with a bright orange peel, known for its juicy, sweet, and tart taste"]
    
    var FruitsPrice = ["$12","$15","$19","$31"]

    var VegetablesDetails = ["Carrots are a root vegetable, primarily grown for their edible taproot, which is often orange but can also be white, yellow, red, or purple.",
                             "Spinach is a leafy green vegetable (Spinacia oleracea) with a long history of consumption, particularly in Central and Western Asia.",
                             "Broccoli is a cruciferous vegetable known for its high nutritional value and various health benefits",
                             "Potatoes are starchy tubers of the plant Solanum tuberosum, a perennial in the nightshade family"]
    
    var VegetablesPrice = ["$12","$15","$19","$31"]
    
    
    var GroceryDetail = ["Milk is a fluid secreted by the mammary glands of female mammals, serving as the primary source of nutrition for their young",
                        "An egg is a large single cell containing the materials needed for an embryo's initial development, often with a hard shell",
                        "Bread is a staple food made from flour (usually wheat), water, and yeast, or another leavening agent, and baked",
                         "A banana is an elongated, curved fruit with a yellow peel when ripe, and soft, sweet flesh"]
    
    var GroceryPrice = ["$12","$15","$19","$31"]
    
    var AssetsFruits = [
        UIImage(named: "Apple"),
        UIImage(named: "banana"),
        UIImage(named: "grapes"),
        UIImage(named: "Orange"),
    ]
    var AssetsVegetables = [
        UIImage(named: "carrot"),
        UIImage(named: "spinach"),
        UIImage(named: "broccoli"),
        UIImage(named: "potato"),
    ]
    var AssetsGrocery = [
        UIImage(named: "milk"),
        UIImage(named: "egg"),
        UIImage(named: "bread"),
        UIImage(named: "banana"),
    ]
    
    
    var Itemname = ""
    var ItemDetails = ""
    var ItemImage:UIImage?
    

    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
