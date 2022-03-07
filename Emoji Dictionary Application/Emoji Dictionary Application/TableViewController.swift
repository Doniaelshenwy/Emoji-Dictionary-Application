//
//  TableViewController.swift
//  Emoji Dictionary Application
//
//  Created by Donia Elshenawy on 07/03/2022.
//

import UIKit

class TableViewController: UITableViewController {

    var arrayEmoji : [Emoji] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        arrayEmoji = [Emoji(name: "😀 -Grinning Face", description: "A typical smiley face."),Emoji(name: "😕 -Confused Face", description: "A confused, puzzled face."),Emoji(name: "😍 -Heart Eyes", description: "A smiley face with hearts for eyes."),Emoji(name: "👮 -Police Officer", description: "A police officer wearing a blue cap with a gold badge."),Emoji(name: "🐢 -Turtle", description: "A cute turtle."),Emoji(name: "🐘 - Elephant", description: "A gray elephant."),Emoji(name: "🍝 - Spaghetti", description: "A plate of spaghetti."),Emoji(name: "🎲 - Die", description: "A single die."),Emoji(name: "⛺️ - Tent", description: "A small tent."),Emoji(name: "📚 - Stack of Books", description: "Three colored books stacked on each other."),Emoji(name: "💔 - Broken Heart", description: "A red, brocken heart."),Emoji(name: "💤 - Sone", description: "Three blue 'z's."),Emoji(name: "🏁 - Checkered Flag", description: "A black-and-white-checkered flag.")]
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayEmoji.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = arrayEmoji[indexPath.row].name
        cell.detailTextLabel?.text = arrayEmoji[indexPath.row].description

        cell.showsReorderControl = true
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }

    
    @IBAction func editBtn(_ sender: UIBarButtonItem) {
        self.isEditing = true
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            arrayEmoji.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    override func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        let name = arrayEmoji[indexPath.row].name
        let description = arrayEmoji[indexPath.row].description
        print("name is \(name) \n description is \(description)")
    }
    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

        let firstName = arrayEmoji.remove(at: fromIndexPath.row)
        arrayEmoji.insert(firstName, at: to.row)
        
    }
    

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
