//
//  MinimumLengthSpecification.swift
//  PasswordValidator
//
//  Created by FeedMyTummy on 11/3/20.
//

import Foundation

struct MinimumLengthSpecification: TextSpecification {
    
    let minimumLength: Int
    
    func isSatisfied(_ text: String, completion: (Result<Void, TextRequirementError>) -> Void) {
        let count = text.count
        if count > minimumLength || count == minimumLength {
            completion(.success(()))
        } else {
            completion(.failure(.minimumLength(minimum: minimumLength)))
        }
    }
    
}

struct MaximumLengthSpecification: TextSpecification {
    
    let maximumLength: Int
    
    func isSatisfied(_ text: String, completion: (Result<Void, TextRequirementError>) -> Void) {
        let count = text.count
        if count < maximumLength || count == maximumLength {
            completion(.success(()))
        } else {
            completion(.failure(.maximumLength(maximum: maximumLength)))
        }
    }
    
}
