import RealmSwift

class Quote: Object {
    @objc dynamic var text: String? = nil
    @objc dynamic var author: String? = nil
    @objc dynamic var isQuoteIsFavorite = false

    convenience init(text: String?, author: String?, isQuoteIsFavorite: Bool) {
        self.init()
        self.text = text
        self.author = author
        self.isQuoteIsFavorite = isQuoteIsFavorite
    }

    

//    static let arrayOfQuotes: [Quote] = [
//        Quote(text: "Если вы решили действовать, закройте двери для сомнений.", author: "Фридрих Вильгельм Ницше", isQuoteIsFavorite: false), Quote(text: "Ты можешь сказать, что у тебя плохая генетика, плохой обмен веществ, а можешь просто поднять свою задницу с дивана и начать работать над собой, задаться целью и верить в себя. В этом случае ты обязательно добьёшься успеха.", author: "Арнольд Шварценегер", isQuoteIsFavorite: false), Quote(text: "Чтобы быть успешным, нужно чтобы была страсть к тому, что вы делаете.", author: "Стив Джобс", isQuoteIsFavorite: false), Quote(text: "Сильное желание чему-то научиться – это уже 50% успеха.", author: "Дейл Карнеги", isQuoteIsFavorite: false)
//    ]
//
    
//    func saveQuotes() {
//
//        for quote in Quote.arrayOfQuotes {
//            let newQuote = Quote()
//
//            newQuote.text = quote.text
//            newQuote.author = quote.author
//            newQuote.isQuoteIsFavorite = false
//
//            StorageManager.saveObject(newQuote)
//        }
//    }
}
