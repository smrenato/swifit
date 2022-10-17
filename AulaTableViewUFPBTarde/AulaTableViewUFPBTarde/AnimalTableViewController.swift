//
//  AnimalTableViewController.swift
//  AulaTableViewUFPBTarde
//
//  Created by student on 14/10/22.
//

import UIKit

class AnimalTableViewController: UITableViewController, UISearchBarDelegate {

    var animals = [AnimalModel]()
    var filterData : [AnimalModel]!
    
   
    @IBOutlet weak var animalsSearchBar: UISearchBar!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        animals = AnimalDAO.getList()
        animalsSearchBar.delegate = self
        filterData = animals
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return filterData.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "animal", for: indexPath)

        // Configure the cell...
        
        if let animalCell = cell as? AnimalTableViewCell{
            let animal = animals[indexPath.row]
            animalCell.nameAnimal.text = animal.nameAnimal
            animalCell.specieAnimal.text = animal.specieAnimal
            animalCell.photoAnimal.image = UIImage(named : animal.fotoAnimal)
            
            return animalCell
        }
        
        

        return cell
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
            
            animals.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            
            
            
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

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
    
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        filterData = []
        
        if searchText == "" {
            filterData = animals
        }else{
            
            for animalsFiltered in animals{
                
                if animalsFiltered.nameAnimal.lowercased().contains(searchText.lowercased()){
                    
                    filterData.append(animalsFiltered)
                }
            }

            
        }
        
        
        self.tableView.reloadData()
        
    }

}
