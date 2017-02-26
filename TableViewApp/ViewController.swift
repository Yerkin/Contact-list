//
//  ViewController.swift
//  TableViewApp
//
//  Created by Darkhan on 26.01.17.
//  Copyright © 2017 SDU. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var myTableView: UITableView!
    var NameSurname = ["Cristiano","Victoria Beckham","Zlatan Ibragimovich","Shakira","Eden Hazard"]
    var PhoneOfContact = ["87017376772","87017771777","87023335999","87070020202","87775551212"]
    var GenderOfContacts = [UIImage.init(named: "male"),UIImage.init(named: "female"),
                  UIImage.init(named: "male"),UIImage.init(named: "female"),
                  UIImage.init(named: "male")]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return GenderOfContacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomCell
        cell.myImage.image = GenderOfContacts[indexPath.row]
        cell.myNameSurname.text = NameSurname[indexPath.row]
        cell.myGoals.text = String(PhoneOfContact[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        NameSurname.remove(at: indexPath.row)
        PhoneOfContact.remove(at: indexPath.row)
        GenderOfContacts.remove(at: indexPath.row)
        
        myTableView.reloadData()
    }
    
    func _Deliter(_ index : Int){
        NameSurname.remove(at: index)
        PhoneOfContact.remove(at: index)
        GenderOfContacts.remove(at: index)
    
        myTableView.reloadData()
    }
    
    func _Creater(_ NamSun : String,_ NumPho : String,_ GenPho : UIImage ){
        NameSurname.append(NamSun)
        PhoneOfContact.append(NumPho)
        GenderOfContacts.append(GenPho)
    
        myTableView.reloadData()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Info"{
            let destination = segue.destination as! InfoView
            destination.name_surname = NameSurname[(myTableView.indexPathForSelectedRow?.row)!]
            destination.number = PhoneOfContact[(myTableView.indexPathForSelectedRow?.row)!]
            destination.gen = GenderOfContacts[(myTableView.indexPathForSelectedRow?.row)!]            
            destination.my_protocol = self
            destination.index = (myTableView.indexPathForSelectedRow?.row)!
        }
        if segue.identifier == "Add"{
            let destination2 = segue.destination as! CreatorView
            destination2.my_protocol = self
            
        }
    }

    }
    
    



