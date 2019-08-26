import RealmSwift

let realm = try! Realm()

class StorageManager {
    static func saveObject(_ newQuote: Quote) {
        try! realm.write {
            realm.add(newQuote)
        }
    }
    
    static func deleteObject(_ quote: Quote) {
        try! realm.write {
            realm.delete(quote)
        }
    }
}
