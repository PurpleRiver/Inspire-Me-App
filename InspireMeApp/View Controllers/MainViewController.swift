import UIKit

class MainViewController: UIViewController {

    @IBAction func trashButtonTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func favoriteButtonTapped(_ sender: UIButton) {
        addToFavorite()
    }
    
    @IBAction func shareButtonTapped(_ sender: UIButton) {
        let activityVC = UIActivityViewController(activityItems: [randomQuote!.text as Any, randomQuote!.author as Any], applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = self.view
        
        present(activityVC, animated: true)
    }
    @IBAction func unwindToHome(segue: UIStoryboardSegue) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var autorLabel: UILabel!
    @IBOutlet weak var favoriteButton: UIButton!
    
    private let randomQuote = realm.objects(Quote.self).randomElement()
    //var quote = Quote()
    private var isQuoteIsFavorite = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //quote.saveQuotes()
        
        quoteLabel.text = randomQuote!.text
        autorLabel.text = randomQuote!.author
        
        }
    
    private func addToFavorite() {
        
        if isQuoteIsFavorite {
           // arrayOfFavotites.removeLast()
//            print(arrayOfFavotites, "remove last")
            favoriteButton.tintColor = .white
        } else {
           // arrayOfFavotites.append(randomQuote!)
//            print(arrayOfFavotites)
            favoriteButton.tintColor = .red
        }
        
//        isQuoteIsFavorite = arrayOfFavotites.contains(where: { (result) -> Bool in
//            
//            if randomQuote?.text != result.text {
//                return false
//            } else {
//                return true
//            }
//        })
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
