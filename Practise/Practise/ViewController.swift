//
//  ViewController.swift
//  Practise
//
//  Created by Donia Elshenawy on 13/03/2022.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate{
 
    
    @IBOutlet weak var tableView: UITableView!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var arrayData : [Data] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        arrayData = [Data(name: "😀 -Grinning Face", description: "A typical smiley face.",photo:"1"),Data(name: "😕 -Confused Face", description: "A confused, puzzled face.",photo:"2"),Data(name: "😍 -Heart Eyes", description: "A smiley face with hearts for eyes.",photo:"3"),Data(name: "👮 -Police Officer", description: "A police officer wearing a blue cap with a gold badge.",photo:"1"),Data(name: "🐢 -Turtle", description: "A cute turtle.",photo:"2"),Data(name: "🐘 - Elephant", description: "A gray elephant.",photo:"3"),Data(name: "🍝 - Spaghetti", description: "A plate of spaghetti.",photo:"1"),Data(name: "🎲 - Die", description: "A single die.",photo:"2"),Data(name: "⛺️ - Tent", description: "A small tent.",photo:"3"),Data(name: "📚 - Stack of Books", description: "Three colored books stacked on each other.",photo:"1"),Data(name: "💔 - Broken Heart", description: "A red, brocken heart.",photo:"2"),Data(name: "💤 - Sone", description: "Three blue 'z's.",photo:"3"),Data(name: "🏁 - Checkered Flag", description: "A black-and-white-checkered flag.",photo:"1")]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = arrayData[indexPath.row].name
        cell.detailTextLabel?.text = arrayData[indexPath.row].description
        cell.imageView?.image = UIImage(contentsOfFile: arrayData[indexPath.row].photo)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    
    @IBAction func startBtn(_ sender: UIButton) {
        self.isEditing = true
    }
    
}

