import Foundation

protocol Builder {
    func setName(_ name: String)
    func setModel(_ num: Int)
    func create() -> Phone
}

protocol Phone {
    var name: String { set get }
    var model: Int { set get }
}

class ClassPhone: Phone {
    var name: String
    var model: Int
    
    init(name: String, model: Int) {
        self.model = model
        self.name = name
    }
}

class iPhone: Builder {
    var name: String = "iPhone"
    var model: Int = 13
    
    func setName(_ name: String) {
        self.name = name
    }
    
    func setModel(_ num: Int) {
        self.model = num
    }
    
    func create() -> Phone {
        ClassPhone(name: self.name, model: self.model)
    }
}



