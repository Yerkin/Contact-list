//
//  CreatorView.swift
//  TableViewApp
//
//  Created by Еркин Абдукаримов on 08.02.17.
//  Copyright © 2017 SDU. All rights reserved.
//

import UIKit

class CreatorView: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    var gender = ["male","female"]
    var index : Int = Int()
    
    var my_protocol : ViewController!

    @IBOutlet weak var GenderPicker: UIPickerView!

    @IBOutlet weak var CreatedNamSur: UITextField!
    
    @IBOutlet weak var CreatedPhoNum: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return gender.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        index = row
        return gender[row]
    }
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1
    }

    @IBAction func saveButton(_ sender: UIButton) {
        my_protocol._Creater(CreatedNamSur.text!, CreatedPhoNum.text!, UIImage.init(named: gender[index])!)
        let nvc : UINavigationController = navigationController!;nvc.popViewController(animated: true)
        print("Created!!!")

    }
    
}
