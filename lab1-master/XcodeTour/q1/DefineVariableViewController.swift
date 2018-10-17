import UIKit

class DefineVariableViewController: UIViewController {

    var array: [String] = []
    // Define any instance variables here
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func matchTheArrayHere() {
        performSegue(withIdentifier: "toNice", sender: nil)
    }
    
    
    func getTextToDisplay(formattedTextArray: [String]) {
        // TODO: Transfer the values in formattedTextArray to the textToDisplay property in our prepare(for:sender:) function below
        // Hint: How would you store a value if you wanted to access it across different functions?
        array = formattedTextArray
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationVC = segue.destination as? NiceWorkViewController {
            // TODO: Assign the destinationVC's textToDisplay property to what was stored in formattedTextArray above
            destinationVC.textToDisplay = array
        }
    }
}

