//
//  NumericSpecification.swift
//  PasswordValidator
//
//  Created by FeedMyTummy on 11/3/20.
//

import Foundation

struct NumericSpecification: TextSpecification {
    
    func isSatisfied(_ text: String, completion: (Result<Void, TextRequirementError>) -> Void) {
        if NSPredicate(format: "SELF MATCHES %@", ".*[0-9]+.*").evaluate(with: text) {
            completion(.success(()))
        } else {
            completion(.failure(.numeric))
        }
    }
    
}
