//
//  LengthSpecification.swift
//  PasswordValidator
//
//  Created by FeedMyTummy on 11/3/20.
//

import Foundation

struct LengthSpecification: TextSpecification {
    
    let minimumLength: Int
    
    func isSatisfied(_ text: String, completion: (Result<Void, TextRequirementError>) -> Void) {
        if password.count > minimumLength || text.count == minimumLength {
            completion(.success(()))
        } else {
            completion(.failure(.length(minimum: minimumLength)))
        }
    }
    
}


