//
//  TextValidator.swift
//  PasswordValidator
//
//  Created by FeedMyTummy on 11/3/20.
//

import Foundation

final class TextValidator {
    
    private let specifications: [TextSpecification]
    
    init(_ specifications: [TextSpecification]) {
        self.specifications = specifications
    }
    
    func validate(password: String, completion: (Result<Void, TextRequirementError>) -> Void) {
        var foundError: TextRequirementError?
        
        for specification in specifications where foundError == nil {
            specification.isSatisfied(password) { result in
                if case .failure(let error) = result {
                    foundError = error
                }
            }
        }
        
        completion(foundError == nil ? .success(()) : .failure(foundError!))
    }
    
}
