

import UIKit

class  CocktailInfoController {
    
    func getCocktailByName(name:String){
        let jsonUrlString = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=\(name)"
        guard let url = URL(string: jsonUrlString) else { return }
        URLSession.shared.dataTask(with: url) { (data, response, err) in
            guard let data = data else { return }
            do {
                let websiteDescription = try JSONDecoder().decode(CocktailItems.self, from: data)
                print(websiteDescription.drinks)
                
            } catch let jsonErr {
                print("Error serializing json:", jsonErr)
            }
            }.resume()
        
    }
    
    func fetchPhotoInfo(completion: @escaping ( CocktailItems?) -> Void)
    {
        let jsonUrlString = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=margarita"
        guard let url = URL(string: jsonUrlString) else { return }
        URLSession.shared.dataTask(with: url) { (data, response, err) in
            guard let data = data else { return }
            do {
                let websiteDescription = try JSONDecoder().decode(CocktailItems.self, from: data)
                print(websiteDescription.drinks)
            } catch let jsonErr {
                print("Error serializing json:", jsonErr)
            }
            }.resume()
    }
}
