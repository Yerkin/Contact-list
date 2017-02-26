//
//  InfoView.swift
//  TableViewApp
//
//  Created by Еркин Абдукаримов on 08.02.17.
//  Copyright © 2017 SDU. All rights reserved.
//

import UIKit

class InfoView: UIViewController {

    var name_surname : String = String()
    var number : String = String()
    var index : Int = Int()
    var gen : UIImage?
    
    @IBOutlet weak var ContactGenImage: UIImageView!
    
    @IBOutlet weak var ContactNameSurname: UILabel!
    
    @IBOutlet weak var ContactPhoneNumber: UILabel!
    
    @IBAction func deleteButton(_ sender: UIButton) {
        my_protocol._Deliter(index)
        let nvc : UINavigationController = navigationController!;nvc.popViewController(animated: true)
        print("Deleted!!!")
    }
    
    
    @IBAction func callButton(_ sender: UIButton) {
        print("Called!!!")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ContactNameSurname.text = name_surname
        ContactPhoneNumber.text = number
        ContactGenImage.image = gen
        

        // Do any additional setup after loading the view.
    }
    var my_protocol : ViewController!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
