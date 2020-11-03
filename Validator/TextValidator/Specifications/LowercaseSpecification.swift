//
//  LowercaseSpecification.swift
//  PasswordValidator
//
//  Created by FeedMyTummy on 11/3/20.
//

import Foundation

struct LowercaseSpecification: TextSpecification {
    
    func isSatisfied(_ text: String, completion: (Result<Void, TextRequirementError>) -> Void) {
        if NSPredicate(format: "SELF MATCHES %@", ".*[a-z]+.*").evaluate(with: text) {
            completion(.success(()))
        } else {
            completion(.failure(.lowercase))
        }
    }
    
}
