import Foundation

protocol DecoratorImp {
    func cost() -> Double
    func name() -> String
}

class DecoratedProduct: DecoratorImp {
    let product: DecoratorImp
    
    init(product: DecoratorImp) {
        self.product = product
    }
    
    func cost() -> Double {
        product.cost()
    }
    
    func name() -> String {
        product.name()
    }
}

final class BaseProduct: DecoratorImp {
    func cost() -> Double {
        100
    }
    
    func name() -> String {
        "Ice-cream"
    }
}

final class Chocolate: DecoratedProduct {
    override func cost() -> Double {
        super.cost() + 110
    }
    
    override func name() -> String {
        super.name() + ", extro chocolate"
    }
}

final class Coconat: DecoratedProduct {
    override func cost() -> Double {
        super.cost() + 75
    }
    
    override func name() -> String {
        super.name() + ", coconat"
    }
}

let customIce = Chocolate(product: Coconat(product: BaseProduct()))
customIce.cost()
customIce.name()
