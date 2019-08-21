import UIKit

class MainViewController: UIViewController {

    @IBAction func trashButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func favoriteButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func shareButtonTapped(_ sender: UIButton) {
        
    }
    
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var autorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeQuote()
    }
    
    private func changeQuote() {
        var index = 2
        for _ in 0...arrayOfQuotes.count {
            quoteLabel.text = arrayOfQuotes[index].text
            autorLabel.text = arrayOfQuotes[index].autor
        }
        index += 1
    }
   
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
